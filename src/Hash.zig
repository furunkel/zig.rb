const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const Array = @import("Array.zig");
const Self = @This();
const ids = @import("ids.zig");
const Fixnum = @import("Fixnum.zig");
const String = @import("String.zig");
const Symbol = @import("Symbol.zig");
const Float = @import("Float.zig");
const Error = @import("Error.zig");
const RubyError = Error.RubyError;

raw: crb.VALUE,

pub fn new() Self {
    return .{ .raw = crb.rb_hash_new() };
}

pub fn fromValue(value: Value) Self {
    return .{ .raw = value.asRaw() };
}

pub fn len(self: Self) usize {
    return crb.RHASH_SIZE(self.raw);
}

pub fn isEmpty(self: Self) bool {
    return self.len() == 0;
}

pub fn get(self: Self, key: Value) Value {
    return Value.fromRaw(crb.rb_hash_aref(self.raw, key.asRaw()));
}

pub fn setUnprotected(self: Self, key: Value, val: Value) void {
    _ = crb.rb_hash_aset(self.raw, key.asRaw(), val.asRaw());
}

pub fn set(self: Self, key: Value, val: Value) RubyError!void {
    const Args = struct { self: Self, key: Value, val: Value };
    const args = Args{ .self = self, .key = key, .val = val };
    return Error.protect(args, void, struct {
        pub fn call(p: *const Args) void {
            p.self.setUnprotected(p.key, p.val);
        }
    }.call);
}

pub fn deleteUnprotected(self: Self, key: Value) Value {
    return Value.fromRaw(crb.rb_hash_delete(self.raw, key.asRaw()));
}

pub fn delete(self: Self, key: Value) RubyError!Value {
    const Args = struct { self: Self, key: Value };
    const args = Args{ .self = self, .key = key };
    return Error.protect(args, Value, struct {
        pub fn call(p: *const Args) Value {
            return p.self.deleteUnprotected(p.key);
        }
    }.call);
}

pub fn hasKeyUnprotected(self: Self, key: Value) bool {
    const result = crb.rb_funcall(self.raw, ids.@"key?", 1, key.asRaw());
    return result == crb.Qtrue;
}

pub fn hasKey(self: Self, key: Value) RubyError!bool {
    const Args = struct { self: Self, key: Value };
    const args = Args{ .self = self, .key = key };
    return Error.protect(args, bool, struct {
        pub fn call(p: *const Args) bool {
            return p.self.hasKeyUnprotected(p.key);
        }
    }.call);
}

pub fn clearUnprotected(self: Self) void {
    _ = crb.rb_hash_clear(self.raw);
}

pub fn clear(self: Self) RubyError!void {
    return Error.protect(self, void, struct {
        pub fn call(p: *const Self) void {
            p.clearUnprotected();
        }
    }.call);
}

pub fn keysUnprotected(self: Self) Array {
    return Array.fromValue(Value.fromRaw(crb.rb_funcall(self.raw, ids.keys, 0)));
}

pub fn keys(self: Self) RubyError!Array {
    return Error.protect(self, Array, struct {
        pub fn call(p: *const Self) Array {
            return p.keysUnprotected();
        }
    }.call);
}

pub fn valuesUnprotected(self: Self) Array {
    return Array.fromValue(Value.fromRaw(crb.rb_funcall(self.raw, ids.values, 0)));
}

pub fn values(self: Self) RubyError!Array {
    return Error.protect(self, Array, struct {
        pub fn call(p: *const Self) Array {
            return p.valuesUnprotected();
        }
    }.call);
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub const IterateResult = enum(c_int) {
    @"continue",
    stop,
    delete,
    check,
};

pub fn forEach(self: Self, userdata: anytype, comptime callback: fn (Value, Value, @TypeOf(userdata)) IterateResult) void {
    const ArgType = @TypeOf(userdata);
    if (@sizeOf(ArgType) > @sizeOf(c_ulong)) {
        @compileError("userdata type size must fit inside c_ulong (hint: use a pointer type)");
    }

    const Wrapper = struct {
        fn call(key: crb.VALUE, val: crb.VALUE, data: c_ulong) callconv(.c) c_int {
            const user_ptr: *const ArgType = @ptrFromInt(data);
            return @intFromEnum(callback(Value.fromRaw(key), Value.fromRaw(val), user_ptr.*));
        }
    };

    crb.rb_hash_foreach(self.raw, Wrapper.call, @intFromPtr(&userdata));
}

pub fn fromStruct(allocator: std.mem.Allocator, comptime T: type, value: T) !Self {
    const info = @typeInfo(T);
    if (info != .@"struct") {
        @compileError("fromStruct requires a struct type, got " ++ @typeName(T));
    }

    if (@hasDecl(T, "toRubyHash")) {
        return value.toRubyHash(allocator);
    }

    var hash = Self.new();
    inline for (info.@"struct".fields) |field| {
        const field_value = @field(value, field.name);
        const ruby_value = try fieldToRuby(allocator, field.type, field_value);
        hash.setUnprotected(Symbol.newUnprotected(field.name).asValue(), ruby_value);
    }
    return hash;
}

fn fieldToRuby(allocator: std.mem.Allocator, comptime FieldType: type, field_value: FieldType) !Value {
    const type_info = @typeInfo(FieldType);

    return switch (type_info) {
        .@"enum" => Symbol.newUnprotected(@tagName(field_value)).asValue(),
        .@"union" => |union_info| if (union_info.tag_type) |TagType|
            unionToRuby(allocator, FieldType, TagType, field_value)
        else
            @compileError("untagged unions are not supported"),
        .int, .float, .bool, .pointer => Value.allocFrom(allocator, field_value),
        .optional => |opt| if (field_value == null)
            Value.nil
        else
            fieldToRuby(allocator, opt.child, field_value.?),
        .@"struct" => structToRuby(allocator, FieldType, field_value),
        else => @compileError("Unsupported type " ++ @typeName(FieldType)),
    };
}

fn unionToRuby(allocator: std.mem.Allocator, comptime UnionType: type, comptime TagType: type, value: UnionType) !Value {
    const tag = @as(TagType, value);
    const tag_name = @tagName(tag);

    const union_info = @typeInfo(UnionType).@"union";

    inline for (union_info.fields) |field| {
        if (std.mem.eql(u8, field.name, tag_name)) {
            if (field.type == void) {
                return Symbol.newUnprotected(tag_name).asValue();
            } else {
                var hash = Self.new();
                const field_value = @field(value, field.name);
                const ruby_value = try fieldToRuby(allocator, field.type, field_value);
                hash.setUnprotected(Symbol.newUnprotected(tag_name).asValue(), ruby_value);
                return hash.asValue();
            }
        }
    }

    unreachable;
}

fn structToRuby(allocator: std.mem.Allocator, comptime StructType: type, value: StructType) !Value {
    if (@hasDecl(StructType, "toRuby")) {
        return value.toRuby(allocator);
    }
    return (try fromStruct(allocator, StructType, value)).asValue();
}

const testing = std.testing;

test "create empty hash" {
    const hash = new();
    try testing.expectEqual(@as(usize, 0), hash.len());
    try testing.expect(hash.isEmpty());
}

test "set and get values (strings)" {
    const hash = new();
    hash.setUnprotected((try String.new("name")).asValue(), (try String.new("Alice")).asValue());
    hash.setUnprotected((try String.new("age")).asValue(), Fixnum.fromComptime(30).asValue());

    const name = hash.get((try String.new("name")).asValue());
    const name_str = try name.toSlice();
    try testing.expectEqualSlices(u8, "Alice", name_str);

    const age = hash.get((try String.new("age")).asValue());
    try testing.expectEqual(@as(c_int, 30), try age.to(c_int));

    try testing.expectEqual(@as(usize, 2), hash.len());
}

test "set and get values (symbols)" {
    const hash = new();
    hash.setUnprotected((try Symbol.new("name")).asValue(), (try String.new("Alice")).asValue());
    hash.setUnprotected((try Symbol.new("age")).asValue(), Fixnum.fromComptime(30).asValue());

    const name = hash.get((try Symbol.new("name")).asValue());
    const name_str = try name.toSlice();
    try testing.expectEqualSlices(u8, "Alice", name_str);

    const age = hash.get((try Symbol.new("age")).asValue());
    try testing.expectEqual(@as(c_int, 30), try age.to(c_int));

    try testing.expectEqual(@as(usize, 2), hash.len());
}

test "hasKey" {
    const hash = new();
    hash.setUnprotected((try String.new("key1")).asValue(), Fixnum.fromComptime(100).asValue());

    try testing.expect(try hash.hasKey((try String.new("key1")).asValue()));
    try testing.expect(!(try hash.hasKey((try String.new("key2")).asValue())));
}

test "delete" {
    const hash = new();
    hash.setUnprotected((try String.new("key1")).asValue(), Fixnum.fromComptime(100).asValue());
    hash.setUnprotected((try String.new("key2")).asValue(), Fixnum.fromComptime(200).asValue());

    try testing.expectEqual(@as(usize, 2), hash.len());

    const deleted = try hash.delete((try String.new("key1")).asValue());
    try testing.expectEqual(@as(c_int, 100), try deleted.to(c_int));
    try testing.expectEqual(@as(usize, 1), hash.len());
    try testing.expect(!(try hash.hasKey((try String.new("key1")).asValue())));
}

test "clear" {
    const hash = new();
    hash.setUnprotected((try String.new("a")).asValue(), Fixnum.fromComptime(1).asValue());
    hash.setUnprotected((try String.new("b")).asValue(), Fixnum.fromComptime(2).asValue());
    try testing.expectEqual(@as(usize, 2), hash.len());

    try hash.clear();
    try testing.expectEqual(@as(usize, 0), hash.len());
    try testing.expect(hash.isEmpty());
}

test "keys and values" {
    const hash = new();
    hash.setUnprotected(Fixnum.fromComptime(1).asValue(), (try String.new("one")).asValue());
    hash.setUnprotected(Fixnum.fromComptime(2).asValue(), (try String.new("two")).asValue());

    const hash_keys = try hash.keys();
    const hash_values = try hash.values();

    // Keys and values should be arrays
    try testing.expectEqual(Value.Type.array, hash_keys.asValue().getType());
    try testing.expectEqual(Value.Type.array, hash_values.asValue().getType());
}

test "forEach iteration" {
    const hash = new();
    hash.setUnprotected(Fixnum.fromComptime(1).asValue(), Fixnum.fromComptime(10).asValue());
    hash.setUnprotected(Fixnum.fromComptime(2).asValue(), Fixnum.fromComptime(20).asValue());
    hash.setUnprotected(Fixnum.fromComptime(3).asValue(), Fixnum.fromComptime(30).asValue());

    // Sum all values using forEach
    const sumCallback = struct {
        fn call(key: Value, val: Value, acc_ptr: *c_int) IterateResult {
            _ = key;
            acc_ptr.* += val.to(c_int) catch return .stop;
            return .@"continue";
        }
    }.call;

    var sum: c_int = 0;
    hash.forEach(&sum, sumCallback);
    try testing.expectEqual(@as(c_int, 60), sum);
}

const TestColor = enum {
    red,
    green,
    blue,
};

const SimpleStruct = struct {
    name: []const u8,
    age: i32,
    height: f64,
    active: bool,
};

const NestedStruct = struct {
    title: []const u8,
    color: TestColor,
    settings: SimpleStruct,
};

const OptionalStruct = struct {
    value: []const u8,
    optional_field: ?[]const u8,
};

test "fromStruct simple struct" {
    const allocator = std.testing.allocator;

    const data = SimpleStruct{
        .name = "Alice",
        .age = 30,
        .height = 5.6,
        .active = true,
    };

    const hash = try Self.fromStruct(allocator, SimpleStruct, data);
    try testing.expectEqual(Value.Type.hash, hash.asValue().getType());

    const name = hash.get((try Symbol.new("name")).asValue());
    const name_str = try name.toSlice();
    try testing.expectEqualSlices(u8, "Alice", name_str);

    const age = hash.get((try Symbol.new("age")).asValue());
    try testing.expectEqual(@as(c_int, 30), try age.to(c_int));

    const height = hash.get((try Symbol.new("height")).asValue());
    try testing.expectEqual(@as(f64, 5.6), try height.to(f64));

    const active = hash.get((try Symbol.new("active")).asValue());
    try testing.expect(try active.to(bool));
}

test "fromStruct nested struct" {
    const allocator = std.testing.allocator;

    const nested = NestedStruct{
        .title = "Test",
        .color = .green,
        .settings = SimpleStruct{
            .name = "Bob",
            .age = 25,
            .height = 6.0,
            .active = false,
        },
    };

    const hash = try Self.fromStruct(allocator, NestedStruct, nested);
    try testing.expectEqual(.hash, hash.asValue().getType());

    const title = hash.get((try Symbol.new("title")).asValue());
    const title_str = try title.toSlice();
    try testing.expectEqualSlices(u8, "Test", title_str);

    const color = hash.get((try Symbol.new("color")).asValue());
    try testing.expectEqual(.symbol, color.getType());
    const color_str = Symbol.fromValueUnchecked(color).toSlice();
    try testing.expectEqualSlices(u8, "green", color_str);

    const settings_val = hash.get((try Symbol.new("settings")).asValue());
    try testing.expectEqual(Value.Type.hash, settings_val.getType());

    const settings = Self.fromValue(settings_val);
    const settings_name = settings.get((try Symbol.new("name")).asValue());
    const settings_name_str = try settings_name.toSlice();
    try testing.expectEqualSlices(u8, "Bob", settings_name_str);
}

test "fromStruct with optional fields" {
    const allocator = std.testing.allocator;

    const with_value = OptionalStruct{
        .value = "present",
        .optional_field = "optional",
    };

    const hash1 = try Self.fromStruct(allocator, OptionalStruct, with_value);
    const opt1 = hash1.get((try Symbol.new("optional_field")).asValue());
    try testing.expect(!opt1.isNil());

    const without_value = OptionalStruct{
        .value = "absent",
        .optional_field = null,
    };

    const hash2 = try Self.fromStruct(allocator, OptionalStruct, without_value);
    const opt2 = hash2.get((try Symbol.new("optional_field")).asValue());
    try testing.expect(opt2.isNil());
}

test "fromStruct with custom toRubyHash" {
    const CustomStruct = struct {
        value: i32,

        pub fn toRubyHash(self: @This(), allocator: std.mem.Allocator) !Self {
            var hash = Self.new();
            hash.setUnprotected((try Symbol.new("custom_value")).asValue(), try Value.allocFrom(allocator, self.value * 2));
            return hash;
        }
    };

    const allocator = std.testing.allocator;

    const data = CustomStruct{ .value = 21 };
    const hash = try Self.fromStruct(allocator, CustomStruct, data);

    const custom_val = hash.get((try Symbol.new("custom_value")).asValue());
    try testing.expectEqual(@as(c_int, 42), try custom_val.to(c_int));
}

test "fromStruct with custom toRuby (returns Value)" {
    const PointArray = struct {
        x: f64,
        y: f64,

        pub fn toRuby(self: @This(), allocator: std.mem.Allocator) !Value {
            _ = allocator;
            const arr = Array.newWithCapacityUnprotected(2);
            arr.pushUnprotected(Float.new(self.x).asValue());
            arr.pushUnprotected(Float.new(self.y).asValue());
            return arr.asValue();
        }
    };

    const Container = struct {
        name: []const u8,
        point: PointArray,
    };

    const data = Container{
        .name = "origin",
        .point = PointArray{ .x = 1.5, .y = 2.5 },
    };

    const allocator = std.testing.allocator;

    const hash = try Self.fromStruct(allocator, Container, data);
    try testing.expectEqual(Value.Type.hash, hash.asValue().getType());

    const name = hash.get((try Symbol.new("name")).asValue());
    const name_str = try name.toSlice();
    try testing.expectEqualSlices(u8, "origin", name_str);

    const point_val = hash.get((try Symbol.new("point")).asValue());
    try testing.expectEqual(Value.Type.array, point_val.getType());

    const point_arr = Array.fromValue(point_val);
    const x_val = point_arr.get(0);
    const y_val = point_arr.get(1);
    try testing.expectEqual(@as(f64, 1.5), try x_val.to(f64));
    try testing.expectEqual(@as(f64, 2.5), try y_val.to(f64));
}

test "fromStruct with int and float slices" {
    const allocator = std.testing.allocator;

    const SliceStruct = struct {
        numbers: []const i32,
        scores: []const f64,
    };

    const data = SliceStruct{
        .numbers = &[_]i32{ 1, 2, 3, 4, 5 },
        .scores = &[_]f64{ 1.1, 2.2, 3.3 },
    };

    const hash = try Self.fromStruct(allocator, SliceStruct, data);
    try testing.expectEqual(Value.Type.hash, hash.asValue().getType());

    const numbers_val = hash.get((try Symbol.new("numbers")).asValue());
    try testing.expectEqual(Value.Type.array, numbers_val.getType());
    const numbers_arr = Array.fromValue(numbers_val);
    try testing.expectEqual(@as(usize, 5), @as(usize, @intCast(numbers_arr.len())));
    try testing.expectEqual(@as(c_int, 1), try numbers_arr.get(0).to(c_int));
    try testing.expectEqual(@as(c_int, 5), try numbers_arr.get(4).to(c_int));

    const scores_val = hash.get((try Symbol.new("scores")).asValue());
    try testing.expectEqual(Value.Type.array, scores_val.getType());
    const scores_arr = Array.fromValue(scores_val);
    try testing.expectEqual(@as(usize, 3), @as(usize, @intCast(scores_arr.len())));
    try testing.expectEqual(@as(f64, 1.1), try scores_arr.get(0).to(f64));
    try testing.expectEqual(@as(f64, 3.3), try scores_arr.get(2).to(f64));
}

test "fromStruct with tagged union" {
    const Union = union(enum) { a: void, b: i32, c: f32 };

    const Struct = struct { foo: Union };

    const allocator = std.testing.allocator;

    {
        const strct = Struct{ .foo = .a };
        const hash = try Self.fromStruct(allocator, Struct, strct);
        try testing.expectEqual(.hash, hash.asValue().getType());

        const foo_val = hash.get((try Symbol.new("foo")).asValue());
        try testing.expectEqual(.symbol, foo_val.getType());
        const foo_str = Symbol.fromValueUnchecked(foo_val).toSlice();
        try testing.expectEqualSlices(u8, "a", foo_str);
    }

    {
        const strct = Struct{ .foo = .{ .b = 100 } };
        const hash = try Self.fromStruct(allocator, Struct, strct);
        try testing.expectEqual(.hash, hash.asValue().getType());

        const foo_val = hash.get((try Symbol.new("foo")).asValue());
        try testing.expectEqual(.hash, foo_val.getType());
        const foo_hash = Self.fromValue(foo_val);
        const b_val = foo_hash.get((try Symbol.new("b")).asValue());
        try testing.expectEqual(@as(c_int, 100), try b_val.to(c_int));
    }

    {
        const strct = Struct{ .foo = .{ .c = 3.14 } };
        const hash = try Self.fromStruct(allocator, Struct, strct);
        try testing.expectEqual(.hash, hash.asValue().getType());

        const foo_val = hash.get((try Symbol.new("foo")).asValue());
        try testing.expectEqual(.hash, foo_val.getType());
        const foo_hash = Self.fromValue(foo_val);
        const c_val = foo_hash.get((try Symbol.new("c")).asValue());
        try testing.expectEqual(@as(f32, 3.14), try c_val.to(f32));
    }
}

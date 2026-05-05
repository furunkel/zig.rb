const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const Array = @import("Array.zig");
const RbClass = @import("Class.zig");
const Fixnum = @import("Fixnum.zig");
const String = @import("String.zig");
const Error = @import("Error.zig");
const RubyError = Error.RubyError;

const Self = @This();

raw: crb.VALUE,

pub fn fromValue(value: Value) Self {
    return .{ .raw = value.asRaw() };
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub fn size(self: Self) usize {
    return @intCast(crb.RSTRUCT_LEN(self.raw));
}

pub fn get(self: Self, index: c_int) Value {
    return Value.fromRaw(crb.RSTRUCT_GET(self.raw, index));
}

pub fn set(self: Self, index: c_int, value: Value) void {
    _ = crb.RSTRUCT_SET(self.raw, index, value.raw);
}

pub fn getMemberUnprotected(self: Self, key: Value) Value {
    return Value.fromRaw(crb.rb_struct_getmember(self.raw, crb.rb_sym2id(key.raw)));
}

pub fn getMember(self: Self, key: Value) RubyError!Value {
    const Args = struct { self: Self, key: Value };
    const args = Args{ .self = self, .key = key };
    return Error.protect(args, Value, struct {
        pub fn call(p: *const Args) Value {
            return p.self.getMemberUnprotected(p.key);
        }
    }.call);
}

pub fn getMemberByNameUnprotected(self: Self, name: [*:0]const u8) Value {
    return Value.fromRaw(crb.rb_struct_getmember(self.raw, crb.rb_intern(name)));
}

pub fn getMemberByName(self: Self, name: [*:0]const u8) RubyError!Value {
    const Args = struct { self: Self, name: [*:0]const u8 };
    const args = Args{ .self = self, .name = name };
    return Error.protect(args, Value, struct {
        pub fn call(p: *const Args) Value {
            return p.self.getMemberByNameUnprotected(p.name);
        }
    }.call);
}

pub fn arefUnprotected(self: Self, key: Value) Value {
    return Value.fromRaw(crb.rb_struct_aref(self.raw, key.raw));
}

pub fn aref(self: Self, key: Value) RubyError!Value {
    const Args = struct { self: Self, key: Value };
    const args = Args{ .self = self, .key = key };
    return Error.protect(args, Value, struct {
        pub fn call(p: *const Args) Value {
            return p.self.arefUnprotected(p.key);
        }
    }.call);
}

pub fn asetUnprotected(self: Self, key: Value, value: Value) void {
    _ = crb.rb_struct_aset(self.raw, key.raw, value.raw);
}

pub fn aset(self: Self, key: Value, value: Value) RubyError!void {
    const Args = struct { self: Self, key: Value, value: Value };
    const args = Args{ .self = self, .key = key, .value = value };
    return Error.protect(args, void, struct {
        pub fn call(p: *const Args) void {
            p.self.asetUnprotected(p.key, p.value);
        }
    }.call);
}

pub fn members(self: Self) Array {
    return Array.fromValue(Value.fromRaw(crb.rb_struct_members(self.raw)));
}

pub fn initializeUnprotected(self: Self, values: Value) Value {
    return Value.fromRaw(crb.rb_struct_initialize(self.raw, values.raw));
}

pub fn initialize(self: Self, values: Value) RubyError!Value {
    const Args = struct { self: Self, values: Value };
    const args = Args{ .self = self, .values = values };
    return Error.protect(args, Value, struct {
        pub fn call(p: *const Args) Value {
            return p.self.initializeUnprotected(p.values);
        }
    }.call);
}

pub const Class = struct {
    raw: crb.VALUE,

    pub fn fromValue(value: Value) Class {
        return .{ .raw = value.asRaw() };
    }

    pub fn asValue(self: Class) Value {
        return Value.fromRaw(self.raw);
    }

    pub fn asClass(cls: Class) RbClass {
        return RbClass.fromRaw(cls.raw);
    }

    pub const DefineOptions = struct {
        outer: ?Value = null,
    };

    pub fn define(name: [*:0]const u8, member_names: []const [*:0]const u8, options: DefineOptions) Class {
        if (options.outer) |outer| {
            return defineStructUnder(outer, name, member_names);
        } else {
            return defineStruct(name, member_names);
        }
    }

    fn defineStruct(name: [*:0]const u8, member_names: []const [*:0]const u8) Class {
        const klass = switch (member_names.len) {
            0 => crb.rb_struct_define(name, @as(?*const u8, null)),
            1 => crb.rb_struct_define(name, member_names[0], @as(?*const u8, null)),
            2 => crb.rb_struct_define(name, member_names[0], member_names[1], @as(?*const u8, null)),
            3 => crb.rb_struct_define(name, member_names[0], member_names[1], member_names[2], @as(?*const u8, null)),
            4 => crb.rb_struct_define(name, member_names[0], member_names[1], member_names[2], member_names[3], @as(?*const u8, null)),
            5 => crb.rb_struct_define(name, member_names[0], member_names[1], member_names[2], member_names[3], member_names[4], @as(?*const u8, null)),
            6 => crb.rb_struct_define(name, member_names[0], member_names[1], member_names[2], member_names[3], member_names[4], member_names[5], @as(?*const u8, null)),
            7 => crb.rb_struct_define(name, member_names[0], member_names[1], member_names[2], member_names[3], member_names[4], member_names[5], member_names[6], @as(?*const u8, null)),
            8 => crb.rb_struct_define(name, member_names[0], member_names[1], member_names[2], member_names[3], member_names[4], member_names[5], member_names[6], member_names[7], @as(?*const u8, null)),
            else => @panic("Struct.define: too many members (max 8)"),
        };
        return .{ .raw = klass };
    }

    fn defineStructUnder(outer: Value, name: [*:0]const u8, member_names: []const [*:0]const u8) Class {
        const klass = switch (member_names.len) {
            0 => crb.rb_struct_define_under(outer.raw, name, @as(?*const u8, null)),
            1 => crb.rb_struct_define_under(outer.raw, name, member_names[0], @as(?*const u8, null)),
            2 => crb.rb_struct_define_under(outer.raw, name, member_names[0], member_names[1], @as(?*const u8, null)),
            3 => crb.rb_struct_define_under(outer.raw, name, member_names[0], member_names[1], member_names[2], @as(?*const u8, null)),
            4 => crb.rb_struct_define_under(outer.raw, name, member_names[0], member_names[1], member_names[2], member_names[3], @as(?*const u8, null)),
            5 => crb.rb_struct_define_under(outer.raw, name, member_names[0], member_names[1], member_names[2], member_names[3], member_names[4], @as(?*const u8, null)),
            6 => crb.rb_struct_define_under(outer.raw, name, member_names[0], member_names[1], member_names[2], member_names[3], member_names[4], member_names[5], @as(?*const u8, null)),
            7 => crb.rb_struct_define_under(outer.raw, name, member_names[0], member_names[1], member_names[2], member_names[3], member_names[4], member_names[5], member_names[6], @as(?*const u8, null)),
            8 => crb.rb_struct_define_under(outer.raw, name, member_names[0], member_names[1], member_names[2], member_names[3], member_names[4], member_names[5], member_names[6], member_names[7], @as(?*const u8, null)),
            else => @panic("Struct.define: too many members (max 8)"),
        };
        return .{ .raw = klass };
    }

    pub fn newUnprotected(self: Class, values: []const Value) Self {
        const raw_values: [*]const crb.VALUE = @ptrCast(values.ptr);
        return .{ .raw = crb.rb_class_new_instance(@intCast(values.len), raw_values, self.raw) };
    }

    pub fn new(self: Class, values: []const Value) RubyError!Self {
        const Args = struct { self: Class, values: []const Value };
        const args = Args{ .self = self, .values = values };
        return Error.protect(args, Self, struct {
            pub fn call(p: *const Args) Self {
                return p.self.newUnprotected(p.values);
            }
        }.call);
    }

    pub fn alloc(self: Class, values: Value) Value {
        return .{ .raw = crb.rb_struct_alloc(self.raw, values.raw) };
    }

    pub fn allocNoinit(self: Class) Value {
        return .{ .raw = crb.rb_struct_alloc_noinit(self.raw) };
    }

    pub fn members(self: Class) Array {
        return Array.fromValue(Value.fromRaw(crb.rb_struct_s_members(self.raw)));
    }
};

test "Struct define and new" {
    const point_cls = Self.Class.define("TestPoint", &.{ "x", "y" }, .{});

    const p = try point_cls.new(&.{ Fixnum.fromComptime(10).asValue(), Fixnum.fromComptime(20).asValue() });

    try std.testing.expectEqual(Value.Type.@"struct", p.asValue().getType());

    const x = p.get(0);
    const y = p.get(1);

    try std.testing.expectEqual(@as(c_longlong, 10), try x.to(c_longlong));
    try std.testing.expectEqual(@as(c_longlong, 20), try y.to(c_longlong));
}

test "Struct member access by name" {
    const person_cls = Self.Class.define("TestPerson", &.{ "name", "age" }, .{});

    const p = try person_cls.new(&.{ (try String.new("Alice")).asValue(), Fixnum.fromComptime(30).asValue() });

    const name = try p.getMemberByName("name");
    const age = try p.getMemberByName("age");

    try std.testing.expectEqualStrings("Alice", try name.toSlice());
    try std.testing.expectEqual(@as(c_longlong, 30), try age.to(c_longlong));
}

test "Struct set member" {
    const mutable_point_cls = Self.Class.define("TestMutablePoint", &.{ "x", "y" }, .{});

    const p = try mutable_point_cls.new(&.{ Fixnum.fromComptime(1).asValue(), Fixnum.fromComptime(2).asValue() });

    p.set(0, Fixnum.fromComptime(100).asValue());

    const new_x = get(p, 0);
    try std.testing.expectEqual(@as(c_longlong, 100), try new_x.to(c_longlong));
}

test "Struct size and members" {
    const triple_cls = Self.Class.define("TestTriple", &.{ "a", "b", "c" }, .{});

    const t = try triple_cls.new(&.{ Fixnum.fromComptime(1).asValue(), Fixnum.fromComptime(2).asValue(), Fixnum.fromComptime(3).asValue() });

    try std.testing.expectEqual(@as(usize, 3), size(t));

    const mems = triple_cls.members();
    try std.testing.expectEqual(@as(usize, 3), mems.len());
}

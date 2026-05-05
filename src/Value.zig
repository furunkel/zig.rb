const std = @import("std");
const crb = @import("crb.zig");
const ids = @import("ids.zig");
const Error = @import("Error.zig");
const RubyError = Error.RubyError;
const Class = @import("Class.zig");
const Fixnum = @import("Fixnum.zig");
const Float = @import("Float.zig");
const Bignum = @import("Bignum.zig");
const String = @import("String.zig");
const Array = @import("Array.zig");
const Integer = @import("integer.zig").Integer;
const Symbol = @import("Symbol.zig");
const Self = @This();

raw: crb.VALUE,

pub const nil = Self{ .raw = crb.Qnil };
pub const @"true" = Self{ .raw = crb.Qtrue };
pub const @"false" = Self{ .raw = crb.Qfalse };

pub fn objectClass() Self {
    return .{ .raw = crb.rb_cObject };
}

pub const ConversionError = error{
    UnsupportedConversion,
    TypeError,
    RubyError,
};

pub const Type = enum(c_int) {
    none = crb.RUBY_T_NONE,
    object = crb.RUBY_T_OBJECT,
    class = crb.RUBY_T_CLASS,
    module = crb.RUBY_T_MODULE,
    float = crb.RUBY_T_FLOAT,
    string = crb.RUBY_T_STRING,
    regexp = crb.RUBY_T_REGEXP,
    array = crb.RUBY_T_ARRAY,
    hash = crb.RUBY_T_HASH,
    @"struct" = crb.RUBY_T_STRUCT,
    bignum = crb.RUBY_T_BIGNUM,
    file = crb.RUBY_T_FILE,
    data = crb.RUBY_T_DATA,
    match = crb.RUBY_T_MATCH,
    complex = crb.RUBY_T_COMPLEX,
    rational = crb.RUBY_T_RATIONAL,
    nil = crb.RUBY_T_NIL,
    true = crb.RUBY_T_TRUE,
    false = crb.RUBY_T_FALSE,
    symbol = crb.RUBY_T_SYMBOL,
    fixnum = crb.RUBY_T_FIXNUM,
    undef = crb.RUBY_T_UNDEF,

    pub fn isNumeric(self: Type) bool {
        return self == .float or self == .fixnum or self == .bignum;
    }

    pub fn isInteger(self: Type) bool {
        return self == .fixnum or self == .bignum;
    }
};

pub fn fromRaw(raw: crb.VALUE) Self {
    return .{ .raw = raw };
}

pub fn asRaw(self: Self) crb.VALUE {
    return self.raw;
}

pub fn isEql(self: Self, other: Self) bool {
    return crb.rb_eql(self.asRaw(), other.asRaw()) != 0;
}

pub fn asFixnum(self: Self) ConversionError!Fixnum {
    if (self.getType() == .fixnum) {
        return Fixnum.fromValueUnchecked(self);
    } else {
        return ConversionError.TypeError;
    }
}

pub fn asBignum(self: Self) ConversionError!Bignum {
    if (self.getType() == .bignum) {
        return Bignum.fromValueUnchecked(self);
    } else {
        return ConversionError.TypeError;
    }
}

pub fn asInteger(self: Self) ConversionError!Integer {
    return switch (self.getType()) {
        .fixnum => .{ .fixnum = try self.asFixnum() },
        .bignum => .{ .bignum = try self.asBignum() },
        else => ConversionError.TypeError,
    };
}

pub fn asString(self: Self) ConversionError!String {
    if (self.getType() == .string) {
        return String.fromValueUnchecked(self);
    } else {
        return ConversionError.TypeError;
    }
}

pub fn asFloat(self: Self) ConversionError!Float {
    if (self.getType() == .float) {
        return Float.fromValueUnchecked(self);
    } else {
        return ConversionError.TypeError;
    }
}

pub fn asSymbol(self: Self) ConversionError!Symbol {
    if (self.getType() == .symbol) {
        return Symbol.fromValueUnchecked(self);
    } else {
        return ConversionError.TypeError;
    }
}

pub fn freeze(self: Self) void {
    _ = crb.rb_obj_freeze(self.asRaw());
}

pub fn isType(self: Self, @"type": Type) bool {
    crb.rb_type_p(self.raw, @intFromEnum(@"type"));
}

pub fn isEqualUnprotected(self: Self, other: Self) bool {
    return crb.rb_equal(self.asRaw(), other.asRaw()) != 0;
}

pub fn isEqual(self: Self, other: Self) RubyError!bool {
    const Args = struct { self: Self, other: Self };
    const args = Args{ .self = self, .other = other };
    return Error.protect(args, bool, struct {
        pub fn call(p: *const Args) bool {
            return p.self.isEqualUnprotected(p.other);
        }
    }.call);
}

pub fn isIdentical(self: Self, other: Self) bool {
    return self.asRaw() == other.asRaw();
}

pub fn fromBool(value: bool) Self {
    return .{ .raw = if (value) crb.Qtrue else crb.Qfalse };
}

pub fn to(self: Self, comptime T: type) ConversionError!T {
    switch (@typeInfo(T)) {
        .int => return switch (self.getType()) {
            .fixnum => @intCast(Fixnum.fromValueUnchecked(self).toInt()),
            .bignum => ConversionError.UnsupportedConversion,
            else => ConversionError.TypeError,
        },
        .bool => return toBool(self),
        .float => return toFloatValue(T, self),
        else => {
            // Handle special types
            if (T == []const u8) {
                return (try String.fromValue(self)).toSlice();
            }
            return ConversionError.UnsupportedConversion;
        },
    }
}

pub fn allocTo(self: Self, allocator: std.mem.Allocator, comptime T: type) ConversionError!T {
    switch (@typeInfo(T)) {
        .int => return switch (crb.rb_type(self.raw)) {
            crb.RUBY_T_FIXNUM => @intCast(Fixnum.fromValueUnchecked(self).toInt()),
            crb.RUBY_T_BIGNUM => blk: {
                const managed = Bignum.fromRawUnchecked(self.raw).toManaged(allocator) catch {
                    return ConversionError.UnsupportedConversion;
                };
                defer managed.deinit();

                const info = @typeInfo(T).int;
                const bits = info.bits;
                const signed = info.signedness == .signed;

                if (managed.bitCountTwosCompForSignedness(if (signed) .signed else .unsigned) > bits) {
                    return ConversionError.Overflow;
                }

                break :blk managed.toInt(T) catch ConversionError.Overflow;
            },
            else => ConversionError.TypeError,
        },
        .bool => return toBool(self.raw),
        .float => return toFloatValue(T, self.raw),
        else => {
            if (T == []const u8) {
                return (try String.fromValue(self)).toSlice();
            }
            if (T == std.math.big.int.Managed) {
                return switch (crb.rb_type(self.raw)) {
                    crb.RUBY_T_FIXNUM => Fixnum.fromValueUnchecked(self).toManaged(allocator) catch {
                        return ConversionError.OutOfMemory;
                    },
                    crb.RUBY_T_BIGNUM => Bignum.fromValueUnchecked(self).toManaged(allocator) catch {
                        return ConversionError.OutOfMemory;
                    },
                    else => return ConversionError.TypeError,
                };
            }
            return ConversionError.UnsupportedConversion;
        },
    }
}

pub fn toSlice(self: Self) ConversionError![]const u8 {
    return (try self.asString()).toSlice();
}

pub fn stringValueCStr(self: Self) ![:0]const u8 {
    const str = crb.rb_string_value(@ptrCast(@constCast(&self.raw)));
    const len = crb.RSTRING_LEN(str);
    const ptr = crb.RSTRING_PTR(str);

    std.debug.assert(ptr[@as(usize, @intCast(len))] == 0);
    const slice = ptr[0..@intCast(len) :0];
    if (std.mem.indexOfScalar(u8, slice, 0) != null) {
        return error.ContainsNullByte;
    }
    return slice;
}

pub fn toStr(self: Self) ConversionError!String {
    const str_value = Self.fromRaw(crb.rb_check_string_type(self.raw));
    if (str_value.raw == crb.Qnil) {
        return ConversionError.TypeError;
    }
    return String.fromValueUnchecked(str_value);
}

pub fn toSUnprotected(self: Self) Self {
    return Self.fromRaw(crb.rb_funcall(self.raw, ids.to_s, 0));
}

pub fn toS(self: Self) RubyError!String {
    const str_value = try Error.protect(self, Self, struct {
        pub fn call(p: *const Self) Self {
            return p.toSUnprotected();
        }
    }.call);
    return String.fromValueUnchecked(str_value);
}

pub fn toAUnprotected(self: Self) Self {
    return Self.fromRaw(crb.rb_funcall(self.raw, ids.to_a, 0));
}

pub fn toA(self: Self) RubyError!Array {
    const arr_value = try Error.protect(self, Self, struct {
        pub fn call(p: *const Self) Self {
            return p.toAUnprotected();
        }
    }.call);
    return Array.fromValue(arr_value);
}

pub fn toFlt(self: Self) ConversionError!Float {
    const float_value = Self.fromRaw(crb.rb_check_to_float(self.raw));
    if (float_value.raw == crb.Qnil) {
        return ConversionError.TypeError;
    }
    return Float.fromValueUnchecked(float_value);
}

pub fn toFUnprotected(self: Self) Self {
    return Self.fromRaw(crb.rb_funcall(self.raw, ids.to_f, 0));
}

pub fn toF(self: Self) RubyError!Float {
    const float_value = try Error.protect(self, Self, struct {
        pub fn call(p: *const Self) Self {
            return p.toFUnprotected();
        }
    }.call);
    if (!float_value.getType().isNumeric()) return error.TypeError;
    return Float.fromValueUnchecked(float_value);
}

pub fn toInt(self: Self) ConversionError!Integer {
    const int_value = Self.fromRaw(crb.rb_check_to_int(self.raw));
    if (int_value.raw == crb.Qnil) {
        return ConversionError.TypeError;
    }
    return int_value.asInteger();
}

pub fn toAry(self: Self) ConversionError!Array {
    const arr_value = Self.fromRaw(crb.rb_check_array_type(self.raw));
    if (arr_value.raw == crb.Qnil) {
        return ConversionError.TypeError;
    }
    return Array.fromValue(arr_value);
}

pub fn toIUnprotected(self: Self) Self {
    return Self.fromRaw(crb.rb_funcall(self.raw, ids.to_i, 0));
}

pub fn toI(self: Self) RubyError!Integer {
    if (self.getType().isInteger()) {
        return self.asInteger() catch unreachable;
    }
    const int_value = try Error.protect(self, Self, struct {
        pub fn call(p: *const Self) Self {
            return p.toIUnprotected();
        }
    }.call);
    if (!int_value.getType().isInteger()) return error.TypeError;
    return int_value.asInteger() catch unreachable;
}

pub fn isKindOf(self: Self, class: Class) bool {
    return crb.rb_obj_is_kind_of(self.raw, class.asValue().asRaw()) != 0;
}

pub fn isNil(self: Self) bool {
    return self.raw == crb.Qnil;
}

pub fn isTrue(self: Self) bool {
    return self.raw == crb.Qtrue;
}

pub fn isFalse(self: Self) bool {
    return self.raw == crb.Qfalse;
}

pub fn isFalsy(self: Self) bool {
    return self.raw == crb.Qnil or self.raw == crb.Qfalse;
}

pub fn isTruthy(self: Self) bool {
    return !self.isFalsy();
}

pub fn getType(self: Self) Type {
    return @enumFromInt(crb.rb_type(self.raw));
}

pub fn getTypeRaw(self: Self) c_int {
    return crb.rb_type(self.raw);
}

pub fn orderUnprotected(self: Self, other: Self) std.math.Order {
    const cmp_result = crb.rb_cmpint(crb.rb_funcall(self.raw, ids.@"<=>", 1, other.raw), self.raw, other.raw);
    return if (cmp_result < 0) .lt else if (cmp_result > 0) .gt else .eq;
}

pub fn order(self: Self, other: Self) RubyError!std.math.Order {
    const Args = struct { self: Self, other: Self };
    const args = Args{ .self = self, .other = other };
    return Error.protect(args, std.math.Order, struct {
        pub fn call(p: *const Args) std.math.Order {
            return p.self.orderUnprotected(p.other);
        }
    }.call);
}

pub fn from(value: anytype) Self {
    const T = @TypeOf(value);
    if (T == Self) return value;

    return switch (@typeInfo(T)) {
        .int => blk: {
            if (value >= Fixnum.min_fixnum and value <= Fixnum.max_fixnum) {
                break :blk Fixnum.fromInt(@intCast(value)).asValue();
            }
            @compileError("Integer value outside fixnum range, use allocFrom() for bignums");
        },
        .comptime_int => blk: {
            if (value >= Fixnum.min_fixnum and value <= Fixnum.max_fixnum) {
                break :blk Fixnum.fromComptime(value).asValue();
            }
            @compileError("Integer value outside fixnum range, use allocFrom() for bignums");
        },
        .float => Float.from(value).asValue(),
        .comptime_float => Float.fromComptime(value).asValue(),
        .bool => fromBool(value),
        .pointer => |ptr_info| switch (ptr_info.size) {
            .one => blk: {
                if (@typeInfo(ptr_info.child) == .array) {
                    const array_info = @typeInfo(ptr_info.child).array;
                    if (array_info.child == u8) {
                        const str: [*:0]const u8 = @ptrCast(value);
                        break :blk fromRaw(crb.rb_str_new_cstr(str));
                    }
                    @compileError("Array type needs allocation, use allocFrom()");
                }
                @compileError("Pointer type '" ++ @typeName(T) ++ "' not supported");
            },
            .slice => blk: {
                if (ptr_info.child == u8) {
                    break :blk String.from(value).asValue();
                }
                @compileError("Slice type needs allocation, use allocFrom()");
            },
            else => @compileError("Pointer type '" ++ @typeName(T) ++ "' not supported"),
        },
        else => @compileError("Type '" ++ @typeName(T) ++ "' not supported by from()"),
    };
}

pub fn allocFrom(allocator: std.mem.Allocator, value: anytype) !Self {
    const T = @TypeOf(value);
    if (T == Self) return value;

    switch (@typeInfo(T)) {
        .int => {
            if (value >= Fixnum.min_fixnum and value <= Fixnum.max_fixnum) {
                return Fixnum.fromInt(@intCast(value)).asValue();
            }
            return (try Bignum.fromType(T, value)).asValue();
        },
        .comptime_int => {
            if (value >= Fixnum.min_fixnum and value <= Fixnum.max_fixnum) {
                return Fixnum.fromComptime(value).asValue();
            }
            return (try Bignum.from(@as(i200, value))).asValue();
        },
        .float, .comptime_float, .bool => return from(value),
        .pointer => |ptr_info| switch (ptr_info.size) {
            .one => {
                if (@typeInfo(ptr_info.child) == .array) {
                    const array_info = @typeInfo(ptr_info.child).array;
                    if (array_info.child == u8) {
                        return from(value);
                    }
                    const slice: []const array_info.child = value[0..array_info.len];
                    return (try Array.fromSlice(allocator, array_info.child, slice)).asValue();
                }
                @compileError("Pointer type '" ++ @typeName(T) ++ "' not supported");
            },
            .slice => {
                if (ptr_info.child == u8) {
                    return from(value);
                }
                return (try Array.fromSlice(allocator, ptr_info.child, value)).asValue();
            },
            else => @compileError("Pointer type '" ++ @typeName(T) ++ "' not supported"),
        },
        else => @compileError("Type '" ++ @typeName(T) ++ "' not supported by allocFrom()"),
    }
}

fn toFloatValue(T: type, value: Self) ConversionError!T {
    switch (value.getType()) {
        .float => return Float.fromValueUnchecked(value).to(T),
        .fixnum, .bignum => return std.math.lossyCast(T, crb.rb_num2dbl(value.asRaw())),
        else => return ConversionError.TypeError,
    }
}

fn toBool(value: Self) ConversionError!bool {
    return switch (value.getType()) {
        .false => false,
        .true => true,
        else => ConversionError.TypeError,
    };
}

pub fn instanceVariableSetUnprotected(self: Self, name: []const u8, value: Self) void {
    _ = crb.rb_ivar_set(self.raw, crb.rb_intern2(name.ptr, @as(c_long, @intCast(name.len))), value.asRaw());
}

pub fn instanceVariableSet(self: Self, name: []const u8, value: Self) RubyError!void {
    const Args = struct { self: Self, name: []const u8, value: Self };
    const args = Args{ .self = self, .name = name, .value = value };
    return Error.protect(args, void, struct {
        pub fn call(p: *const Args) void {
            p.self.instanceVariableSetUnprotected(p.name, p.value);
        }
    }.call);
}

pub fn instanceVariableGet(self: Self, name: []const u8) Self {
    return Self.fromRaw(crb.rb_ivar_get(self.raw, crb.rb_intern2(name.ptr, name.len)));
}

// FIXME: add Value.inspect and use here
pub fn format(
    self: Self,
    writer: *std.Io.Writer,
) std.Io.Writer.Error!void {
    // call ruby's inspect method to get a string representation
    const inspect_result = crb.rb_funcall(self.raw, ids.inspect, 0);
    const inspect_str = (String.fromValue(Self.fromRaw(inspect_result)) catch {
        // fallback
        try writer.print("Value{{raw=0x{x}}}", .{self.raw});
        return;
    }).toSlice();

    try writer.writeAll(inspect_str);
}

test "format" {
    const testing = std.testing;

    const allocator = testing.allocator;

    {
        var allocating = std.Io.Writer.Allocating.init(allocator);
        defer allocating.deinit();

        const int_value = Fixnum.fromComptime(42).asValue();
        try int_value.format(&allocating.writer);

        const int_output = try allocating.toOwnedSlice();
        defer allocator.free(int_output);
        try testing.expectEqualStrings("42", int_output);
    }

    {
        var allocating = std.Io.Writer.Allocating.init(allocator);
        defer allocating.deinit();

        const str_value = (try String.new("hello")).asValue();
        try str_value.format(&allocating.writer);

        const str_output = try allocating.toOwnedSlice();
        defer allocator.free(str_output);
        try testing.expectEqualStrings("\"hello\"", str_output);
    }

    {
        var allocating = std.Io.Writer.Allocating.init(allocator);
        defer allocating.deinit();

        const nil_value = Self.nil;
        try nil_value.format(&allocating.writer);

        const nil_output = try allocating.toOwnedSlice();
        defer allocator.free(nil_output);
        try testing.expectEqualStrings("nil", nil_output);
    }
}

test "integer round-trip conversions" {
    const testing = std.testing;

    const signed_values = [_]c_longlong{
        0,
        1,
        -1,
        std.math.maxInt(c_int),
        std.math.minInt(c_int),
        @as(c_longlong, 1) << 40,
        -(@as(c_longlong, 1) << 40),
    };

    inline for (signed_values) |value| {
        const ruby_value = Fixnum.fromInt(@intCast(value)).asValue();
        const round_trip = try ruby_value.to(c_longlong);
        try testing.expectEqual(value, round_trip);
    }

    const unsigned_values = [_]c_ulonglong{
        std.math.maxInt(c_uint),
        @as(c_ulonglong, 1) << 40,
        (@as(c_ulonglong, 1) << 60) | 12345,
    };

    inline for (unsigned_values) |value| {
        const ruby_value = Fixnum.fromInt(@intCast(@as(Fixnum.Int, @intCast(value)))).asValue();
        const round_trip = try ruby_value.to(c_ulonglong);
        try testing.expectEqual(value, round_trip);
    }
}

test "boolean conversions and truthiness" {
    const testing = std.testing;

    try testing.expect(try Self.fromBool(true).to(bool));
    try testing.expect(!(try Self.fromBool(false).to(bool)));

    try testing.expect(Self.true.isTruthy());
    try testing.expect(!Self.false.isTruthy());
    try testing.expect(!Self.nil.isTruthy());

    try testing.expect(!Self.true.isFalsy());
    try testing.expect(Self.false.isFalsy());
    try testing.expect(Self.nil.isFalsy());
}

test "symbol creation" {
    const testing = std.testing;

    const sym1 = (try Symbol.new("test")).asValue();
    try testing.expectEqual(Type.symbol, sym1.getType());

    const sym2 = (try Symbol.new("test")).asValue();
    try testing.expectEqual(sym1.asRaw(), sym2.asRaw());

    const sym3 = (try Symbol.new("other")).asValue();
    try testing.expect(sym1.asRaw() != sym3.asRaw());
}

test "order" {
    const testing = std.testing;

    {
        const a = Fixnum.fromComptime(5).asValue();
        const b = Fixnum.fromComptime(10).asValue();
        const c = Fixnum.fromComptime(5).asValue();

        try testing.expectEqual(std.math.Order.lt, try a.order(b));
        try testing.expectEqual(std.math.Order.gt, try b.order(a));
        try testing.expectEqual(std.math.Order.eq, try a.order(c));
    }

    {
        const f1 = Float.fromComptime(3.14).asValue();
        const f2 = Float.from(2.71).asValue();
        const f3 = Float.fromComptime(3.14).asValue();

        try testing.expectEqual(std.math.Order.gt, try f1.order(f2));
        try testing.expectEqual(std.math.Order.lt, try f2.order(f1));
        try testing.expectEqual(std.math.Order.eq, try f1.order(f3));
    }

    {
        const s1 = (try String.new("apple")).asValue();
        const s2 = (try String.new("banana")).asValue();
        const s3 = (try String.new("apple")).asValue();

        try testing.expectEqual(std.math.Order.lt, try s1.order(s2));
        try testing.expectEqual(std.math.Order.gt, try s2.order(s1));
        try testing.expectEqual(std.math.Order.eq, try s1.order(s3));
    }
}

test "equality functions" {
    const testing = std.testing;

    // isIdentical - checks object identity (same object in memory)
    {
        const a = Fixnum.fromComptime(42).asValue();
        const b = Fixnum.fromComptime(42).asValue();
        const c = a;

        try testing.expect(a.isIdentical(c));
        try testing.expect(a.isIdentical(b));
    }

    // isEqual - Ruby's == operator (value equality)
    {
        const s1 = (try String.new("hello")).asValue();
        const s2 = (try String.new("hello")).asValue();
        const s3 = (try String.new("world")).asValue();

        try testing.expect(try s1.isEqual(s2));
        try testing.expect(!(try s1.isEqual(s3)));

        const n1 = Fixnum.fromComptime(100).asValue();
        const n2 = Fixnum.fromComptime(100).asValue();
        const n3 = Fixnum.fromComptime(200).asValue();
        const n4 = Fixnum.fromInt(200).asValue();

        try testing.expect(try n1.isEqual(n2));
        try testing.expect(!(try n1.isEqual(n3)));
        try testing.expect(try n3.isEqual(n4));
    }

    // isEql - Ruby's eql? method (stricter equality, checks type and value)
    {
        const int1 = Fixnum.fromComptime(42).asValue();
        const int2 = Fixnum.fromComptime(42).asValue();
        const float1 = Float.from(42.0).asValue();

        try testing.expect(int1.isEql(int2));
        try testing.expect(!int1.isEql(float1));

        const str1 = (try String.new("test")).asValue();
        const str2 = (try String.new("test")).asValue();
        const sym = (try Symbol.new("test")).asValue();

        try testing.expect(str1.isEql(str2));
        try testing.expect(!str1.isEql(sym));
    }
}

test "toI converts values to integer" {
    const testing = std.testing;

    {
        const int_val = Fixnum.fromComptime(99).asValue();
        const i = try int_val.toI();
        try testing.expectEqual(@as(u8, 99), try i.to(u8));
    }

    {
        const int_val = Fixnum.fromComptime(-42).asValue();
        const i = try int_val.toI();
        try testing.expectEqual(@as(i64, -42), try i.to(i64));
    }

    {
        const int_val = Fixnum.fromInt(1_000_000).asValue();
        const i = try int_val.toI();
        try testing.expectEqual(@as(u32, 1_000_000), try i.to(u32));
    }
}

test "toI converts objects to integer" {
    const testing = std.testing;

    _ = crb.rb_eval_string(
        \\class ToITest
        \\  def to_i
        \\    123
        \\  end
        \\end
    );
    const obj = Self.fromRaw(crb.rb_eval_string("ToITest.new"));
    const i = try obj.toI();
    try testing.expectEqual(@as(i32, 123), try i.to(i32));
}

test "toI returns RubyError for objects without to_i" {
    const testing = std.testing;

    const sym = (try Symbol.new("test")).asValue();
    const result = sym.toI();
    try testing.expectError(Error.RubyError.NoMethodError, result);
}

test "isKindOf" {
    const testing = std.testing;
    const Time = @import("Time.zig");

    {
        const time = try Time.fromMilliTimestamp(1_700_000_000_000);
        try testing.expect(time.asValue().isKindOf(Time.getClass()));
    }

    {
        const int_val = Fixnum.fromComptime(42).asValue();
        try testing.expect(!int_val.isKindOf(Time.getClass()));
    }

    {
        const str_val = (try String.new("hello")).asValue();
        try testing.expect(!str_val.isKindOf(Time.getClass()));
    }
}

test "toStr converts string-like objects" {
    const testing = std.testing;

    // String values work with to_str
    {
        const str_val = (try String.new("hello")).asValue();
        const str = try str_val.toStr();
        try testing.expectEqualStrings("hello", str.toSlice());
    }

    _ = crb.rb_eval_string(
        \\class ToStrTest
        \\  def to_str
        \\    "custom"
        \\  end
        \\end
    );
    const obj = Self.fromRaw(crb.rb_eval_string("ToStrTest.new"));
    const str = try obj.toStr();
    try testing.expectEqualStrings("custom", str.toSlice());
}

test "toStr returns TypeError for objects without to_str" {
    const testing = std.testing;

    // Symbols don't have to_str
    const sym = (try Symbol.new("test")).asValue();
    const result = sym.toStr();
    try testing.expectError(ConversionError.TypeError, result);

    // Integers don't have to_str
    const int_val = Fixnum.fromComptime(42).asValue();
    const int_result = int_val.toStr();
    try testing.expectError(ConversionError.TypeError, int_result);
}

test "toFlt converts numeric values" {
    const testing = std.testing;

    // Float values
    {
        const float_val = Float.fromComptime(3.14).asValue();
        const f = try float_val.toFlt();
        try testing.expectApproxEqAbs(@as(f64, 3.14), f.to(f64), 0.001);
    }

    // Integer values convert to float
    {
        const int_val = Fixnum.fromComptime(42).asValue();
        const f = try int_val.toFlt();
        try testing.expectApproxEqAbs(@as(f64, 42.0), f.to(f64), 0.001);
    }
}

test "toFlt returns TypeError for non-numeric" {
    const testing = std.testing;

    const sym = (try Symbol.new("test")).asValue();
    const result = sym.toFlt();
    try testing.expectError(ConversionError.TypeError, result);
}

test "toInt converts integer values" {
    const testing = std.testing;

    {
        const int_val = Fixnum.fromComptime(42).asValue();
        const integer = try int_val.toInt();
        try testing.expectEqual(@as(i64, 42), try integer.to(i64));
    }
}

test "toInt returns TypeError for non-integer" {
    const testing = std.testing;

    const str_val = (try String.new("hello")).asValue();
    const result = str_val.toInt();
    try testing.expectError(ConversionError.TypeError, result);
}

test "toAry converts array-like objects" {
    const testing = std.testing;

    // Arrays work with to_ary
    {
        const arr = Array.new();
        arr.pushUnprotected(Fixnum.fromComptime(1).asValue());
        arr.pushUnprotected(Fixnum.fromComptime(2).asValue());
        const result = try arr.asValue().toAry();
        try testing.expectEqual(@as(usize, 2), result.len());
    }

    // Objects with to_ary work
    _ = crb.rb_eval_string(
        \\class ToAryTest
        \\  def to_ary
        \\    [1, 2, 3]
        \\  end
        \\end
    );
    const obj = Self.fromRaw(crb.rb_eval_string("ToAryTest.new"));
    const arr = try obj.toAry();
    try testing.expectEqual(@as(usize, 3), arr.len());
}

test "toAry returns TypeError for objects without to_ary" {
    const testing = std.testing;

    const int_val = Fixnum.fromComptime(42).asValue();
    const result = int_val.toAry();
    try testing.expectError(ConversionError.TypeError, result);
}

test "toA converts objects with to_a" {
    const testing = std.testing;

    // Arrays work
    {
        const arr = Array.new();
        arr.pushUnprotected(Fixnum.fromComptime(1).asValue());
        const result = try arr.asValue().toA();
        try testing.expectEqual(@as(usize, 1), result.len());
    }

    // Objects with to_a work
    _ = crb.rb_eval_string(
        \\class ToATest
        \\  def to_a
        \\    [4, 5, 6]
        \\  end
        \\end
    );
    const obj = Self.fromRaw(crb.rb_eval_string("ToATest.new"));
    const arr = try obj.toA();
    try testing.expectEqual(@as(usize, 3), arr.len());
}

test "toA returns RubyError for objects without to_a" {
    const testing = std.testing;

    // Most objects don't have to_a in modern Ruby
    const int_val = Fixnum.fromComptime(42).asValue();
    const result = int_val.toA();
    try testing.expectError(Error.RubyError.NoMethodError, result);
}

const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const Bignum = @import("Bignum.zig");
const Integer = @import("integer.zig").Integer;

const Self = @This();

pub const Int = std.meta.Int(.signed, @typeInfo(c_long).int.bits - 1);
pub const max_fixnum = std.math.maxInt(Int);
pub const min_fixnum = std.math.minInt(Int);

comptime {
    std.debug.assert(max_fixnum == (2 << (@typeInfo(c_long).int.bits - 3)) - 1);
    std.debug.assert(min_fixnum == -(2 << (@typeInfo(c_long).int.bits - 3)));
}

raw: crb.VALUE,

pub fn fromValue(val: Value) Value.ConversionError!Self {
    return val.asFixnum();
}

pub fn fromValueUnchecked(val: Value) Self {
    return .{ .raw = val.asRaw() };
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub fn fromInt(value: Int) Self {
    return .{ .raw = crb.RB_INT2FIX(value) };
}

pub fn fromComptime(value: comptime_int) Self {
    if (comptime value < min_fixnum or value > max_fixnum) {
        @compileError("value does not fit in Ruby Fixnum");
    }
    return .{ .raw = crb.RB_INT2FIX(value) };
}

pub fn from(value: anytype) Self {
    const T = @TypeOf(value);
    if (T == comptime_int) {
        return fromComptime(value);
    }
    comptime {
        if (@typeInfo(T) != .int) @compileError("Fixnum.from requires an integer type, got '" ++ @typeName(T) ++ "'");
    }
    return fromInt(value);
}

pub fn toInt(self: Self) Int {
    return @intCast(crb.FIX2LONG(self.raw));
}

pub fn asInteger(self: Self) Integer {
    return .{ .fixnum = self };
}

pub fn toManaged(self: Self, allocator: std.mem.Allocator) !std.math.big.int.Managed {
    const val = crb.FIX2LONG(self.raw);
    var result = try std.math.big.int.Managed.init(allocator);
    errdefer result.deinit();
    try result.set(val);
    return result;
}

test "fixnum round-trip conversions" {
    const testing = std.testing;

    const values = [_]Int{
        -1_000_000,
        -42,
        -1,
        0,
        1,
        42,
        1_000_000,
        max_fixnum,
    };

    inline for (values) |value| {
        const ruby_value = Self.fromInt(value);
        try testing.expectEqual(Value.Type.fixnum, ruby_value.asValue().getType());
        const round_trip = ruby_value.toInt();
        try testing.expectEqual(value, round_trip);
    }
}

test "from dispatches to fromComptime and fromInt" {
    const testing = std.testing;

    const comptime_val = Self.from(42);
    try testing.expectEqual(@as(Int, 42), comptime_val.toInt());

    const runtime_val: Int = 123;
    const from_runtime = Self.from(runtime_val);
    try testing.expectEqual(@as(Int, 123), from_runtime.toInt());
}

test "fromValue rejects bignum" {
    const testing = std.testing;

    const big_value = (try Bignum.from(@as(i200, 1) << 100)).asValue();
    const result = Self.fromValue(big_value);
    try testing.expectError(Value.ConversionError.TypeError, result);
}

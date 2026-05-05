const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const Fixnum = @import("Fixnum.zig");
const Symbol = @import("Symbol.zig");

const Self = @This();

raw: crb.VALUE,

pub fn fromValue(val: Value) Value.ConversionError!Self {
    return val.asFloat();
}

pub fn fromValueUnchecked(value: Value) Self {
    return .{ .raw = value.asRaw() };
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub fn new(value: f64) Self {
    return .{ .raw = crb.rb_float_new(value) };
}

pub fn fromFloat(value: f64) Self {
    return new(value);
}

pub fn from(value: anytype) Self {
    const T = @TypeOf(value);
    if (T == comptime_float) {
        return fromComptime(value);
    }
    comptime {
        if (@typeInfo(T) != .float) @compileError("Float.from requires a float type, got '" ++ @typeName(T) ++ "'");
    }
    return fromFloat(std.math.lossyCast(f64, value));
}

pub fn fromComptime(value: comptime_float) Self {
    return new(@as(f64, value));
}

pub fn to(self: Self, comptime T: type) T {
    comptime {
        if (@typeInfo(T) != .float) @compileError("Float.to requires a float type, got '" ++ @typeName(T) ++ "'");
    }
    return std.math.lossyCast(T, crb.rb_num2dbl(self.raw));
}

test "float round-trip conversions" {
    const testing = std.testing;

    const floats = [_]f64{
        0.0,
        -123.456,
        98765.4321,
        std.math.pi,
        -std.math.tau / 3.0,
    };

    inline for (floats) |value| {
        const ruby_value = Self.from(value);
        const round_trip = ruby_value.to(f64);
        try testing.expectEqual(value, round_trip);
    }
}

test "from dispatches to fromComptime and fromFloat" {
    const testing = std.testing;

    const comptime_val = Self.from(3.14);
    try testing.expectApproxEqAbs(@as(f64, 3.14), comptime_val.to(f64), 0.001);

    const runtime_val: f64 = 2.718;
    const from_runtime = Self.from(runtime_val);
    try testing.expectApproxEqAbs(@as(f64, 2.718), from_runtime.to(f64), 0.001);
}

test "toF converts objects with to_f" {
    const testing = std.testing;

    _ = crb.rb_eval_string(
        \\class ToFTest
        \\  def to_f
        \\    42.5
        \\  end
        \\end
    );
    const obj = Value.fromRaw(crb.rb_eval_string("ToFTest.new"));
    const f = try obj.toF();
    try testing.expectApproxEqAbs(@as(f64, 42.5), f.to(f64), 0.001);
}

test "toF returns RubyError for objects without to_f" {
    const testing = std.testing;

    const sym = (try Symbol.new("test")).asValue();
    const result = sym.toF();
    try testing.expectError(error.NoMethodError, result);
}

test "toFlt converts numeric values" {
    const testing = std.testing;

    const int_val = Fixnum.fromComptime(42).asValue();
    const f = try int_val.toFlt();
    try testing.expectApproxEqAbs(@as(f64, 42.0), f.to(f64), 0.001);
}

test "toFlt returns TypeError for non-numeric" {
    const testing = std.testing;

    const sym = (try Symbol.new("test")).asValue();
    const result = sym.toFlt();
    try testing.expectError(Value.ConversionError.TypeError, result);
}

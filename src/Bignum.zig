const std = @import("std");
const builtin = @import("builtin");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const Array = @import("Array.zig");
const Integer = @import("integer.zig").Integer;

const Self = @This();

raw: crb.VALUE,

pub fn fromValue(val: Value) Value.ConversionError!Self {
    return val.asBignum();
}

pub fn fromValueUnchecked(val: Value) Self {
    return .{ .raw = val.asRaw() };
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub fn asInteger(self: Self) Integer {
    return .{ .bignum = self };
}

fn packFlags() c_int {
    return switch (builtin.cpu.arch.endian()) {
        .little => crb.INTEGER_PACK_2COMP | crb.INTEGER_PACK_LITTLE_ENDIAN,
        .big => crb.INTEGER_PACK_2COMP | crb.INTEGER_PACK_BIG_ENDIAN,
    };
}

// Taken from snippet in documentation in bignum.c
//  size_t size;
//  int neg = FIXNUM_P(val) ? FIX2LONG(val) < 0 : BIGNUM_NEGATIVE_P(val);
//  int nlz_bits;
//  size = rb_absint_size(val, &nlz_bits);
//  if (nlz_bits == 0 && !(neg && rb_absint_singlebit_p(val)))
//    size++;
fn bitSize(val: crb.VALUE) usize {
    var size: usize = undefined;
    const neg = crb.RBIGNUM_NEGATIVE_P(val);
    var nlz_bits: c_int = undefined;
    size = crb.rb_absint_numwords(val, 1, @ptrCast(@alignCast(&nlz_bits)));
    if (nlz_bits == 0 and !(neg and crb.rb_absint_singlebit_p(val) != 0))
        size += 1;
    return size;
}

pub fn from(value: anytype) !Self {
    return fromType(@TypeOf(value), value);
}

pub fn fromType(comptime T: type, value: T) !Self {
    const type_info = @typeInfo(T);

    const bits = comptime switch (type_info) {
        .int => |info_int| info_int.bits,
        .comptime_int => std.math.log2_int_ceil(usize, value) + 1,
        else => @compileError("Unsupported type for BigInt conversion"),
    };

    if (type_info != .int) {
        @compileError("Unsupported type for BigInt conversion");
    }

    const limb_count = comptime std.math.big.int.calcTwosCompLimbCount(bits);
    var limbs: [limb_count]std.math.big.Limb = undefined;
    var buffer: [limb_count * @sizeOf(std.math.big.Limb)]u8 = @splat(0);

    const value_const = std.math.big.int.Mutable.init(&limbs, value).toConst();
    return fromConst(value_const, &buffer);
}

pub fn fromManaged(value_managed: std.math.big.int.Managed, allocator: std.mem.Allocator) !Self {
    const value_const = value_managed.toConst();
    const bit_count = value_const.bitCountTwosCompForSignedness(.signed);
    const num_bytes = try std.math.divCeil(usize, bit_count, @bitSizeOf(u8));
    const buffer = try allocator.alloc(u8, num_bytes);
    defer allocator.free(buffer);
    @memset(buffer, 0);

    return fromConst(value_const, buffer);
}

fn fromConst(value_const: std.math.big.int.Const, buffer: []u8) !Self {
    if (value_const.eqlZero()) {
        return .{ .raw = crb.INT2NUM(0) };
    }

    const bit_count = value_const.bitCountTwosCompForSignedness(.signed);
    const num_bytes = try std.math.divCeil(usize, bit_count, @bitSizeOf(u8));
    std.debug.assert(num_bytes <= buffer.len);

    const byte_aligned_bit_count = num_bytes * 8;
    value_const.writePackedTwosComplement(buffer, 0, byte_aligned_bit_count, builtin.cpu.arch.endian());

    const rb_val = crb.rb_integer_unpack(
        @ptrCast(@alignCast(@constCast(buffer.ptr))),
        @intCast(num_bytes),
        @sizeOf(u8),
        0,
        packFlags(),
    );
    return .{ .raw = rb_val };
}

fn integerPack(self: Self, buf: []u8) !bool {
    const result = crb.rb_integer_pack(self.raw, @ptrCast(buf.ptr), buf.len, @sizeOf(u8), 0, packFlags());
    return switch (result) {
        2 => error.TargetTooSmall, // positive overflow
        -2 => error.TargetTooSmall, // negative overflow,
        1 => true, // positive
        -1 => false, // negative,
        else => unreachable,
    };
}

pub fn toManaged(self: Self, allocator: std.mem.Allocator) !std.math.big.int.Managed {
    const num_bits = bitSize(self.raw);
    const num_bytes = try std.math.divCeil(usize, @intCast(num_bits), @bitSizeOf(u8));
    const buf = try allocator.alloc(u8, num_bytes);
    defer allocator.free(buf);
    @memset(buf, 0);

    const positive = try self.integerPack(buf);

    var result = try std.math.big.int.Managed.init(allocator);
    errdefer result.deinit();

    const read_bit_count = num_bits;
    // const read_bit_count = num_bytes * 8;
    const num_limbs = std.math.big.int.calcTwosCompLimbCount(num_bits);
    try result.ensureCapacity(num_limbs);

    var mutable = result.toMutable();
    mutable.readPackedTwosComplement(buf, 0, read_bit_count, builtin.cpu.arch.endian(), .signed);
    result.setMetadata(mutable.positive, mutable.len);

    std.debug.assert(mutable.positive == positive);

    return result;
}

pub fn toInt(self: Self, comptime T: type) !T {
    comptime {
        if (@typeInfo(T) != .int) @compileError("Bignum.toInt requires an integer type, got '" ++ @typeName(T) ++ "'");
    }

    const info = @typeInfo(T).int;
    // for signed types, pack into one extra bit so that a positive value
    // that would overflow (e.g. 2^63 into i64) is not misread as a valid
    // negative via 2's complement sign-bit confusion.
    const num_bits = comptime info.bits + @intFromBool(info.signedness == .signed);
    const num_bytes = comptime std.math.divCeil(u16, num_bits, @bitSizeOf(u8)) catch unreachable;
    var buf: [num_bytes]u8 = @splat(0);

    const positive = try self.integerPack(&buf);
    if (info.signedness == .unsigned and !positive) return error.NegativeIntoUnsigned;

    const limb_count = comptime std.math.big.int.calcTwosCompLimbCount(num_bits);
    var limbs: [limb_count]std.math.big.Limb = undefined;
    var mutable = std.math.big.int.Mutable.init(&limbs, 0);
    mutable.readPackedTwosComplement(&buf, 0, num_bits, builtin.cpu.arch.endian(), info.signedness);
    return mutable.toConst().toInt(T);
}

test "toInt round-trip for large integers" {
    const testing = std.testing;

    const large: i200 = (@as(i200, 1) << 100) + 42;
    const bignum = try Self.fromType(i200, large);
    try testing.expectEqual(large, try bignum.toInt(i200));
}

test "toInt returns TargetTooSmall when value does not fit" {
    const testing = std.testing;

    // Value larger than i64 max
    const too_big: i200 = @as(i200, std.math.maxInt(i64)) + 1;
    const bignum = try Self.fromType(i200, too_big);
    try testing.expectError(error.TargetTooSmall, bignum.toInt(i64));
}

test "toInt returns NegativeIntoUnsigned for negative value into unsigned type" {
    const testing = std.testing;

    const neg: i200 = -1;
    const bignum = try Self.fromType(i200, neg);
    try testing.expectError(error.NegativeIntoUnsigned, bignum.toInt(u64));
}

test "big int round-trip conversions" {
    const testing = std.testing;
    const allocator = testing.allocator;

    const literals = [_][]const u8{
        "9223372036854775808",
        "-9223372036854775809",
        "123456789012345678901234567890",
        "-123456789012345678901234567890",
    };

    inline for (literals) |literal| {
        const int = try std.fmt.parseInt(i256, literal, 10);
        const big_int_val = try Self.from(int);
        var int_ = try big_int_val.toManaged(allocator);
        defer int_.deinit();
        var int_managed = try std.math.big.int.Managed.initSet(allocator, int);
        defer int_managed.deinit();
        try testing.expectEqual(int_.order(int_managed), .eq);
    }
}

test "from with large integers (i200)" {
    const testing = std.testing;
    const allocator = testing.allocator;

    const large_positive: i200 = (1 << 100);
    const large_negative: i200 = -(1 << 100);
    const very_large: i200 = (@as(i200, 1) << 150) + 12345;

    {
        const ruby_value = try Value.allocFrom(allocator, large_positive);
        try testing.expectEqual(Value.Type.bignum, ruby_value.getType());
        var round_trip = try (try fromValue(ruby_value)).toManaged(allocator);
        defer round_trip.deinit();
        var expected = try std.math.big.int.Managed.initSet(allocator, large_positive);
        defer expected.deinit();
        try testing.expectEqual(round_trip.order(expected), .eq);
    }

    {
        const ruby_value = try Value.allocFrom(allocator, large_negative);
        try testing.expectEqual(Value.Type.bignum, ruby_value.getType());
        var round_trip = try (try fromValue(ruby_value)).toManaged(allocator);
        defer round_trip.deinit();
        var expected = try std.math.big.int.Managed.initSet(allocator, large_negative);
        defer expected.deinit();
        try testing.expectEqual(round_trip.order(expected), .eq);
    }

    {
        const ruby_value = try Value.allocFrom(allocator, very_large);
        try testing.expectEqual(Value.Type.bignum, ruby_value.getType());
        var round_trip = try (try fromValue(ruby_value)).toManaged(allocator);
        defer round_trip.deinit();
        var expected = try std.math.big.int.Managed.initSet(allocator, very_large);
        defer expected.deinit();
        try testing.expectEqual(round_trip.order(expected), .eq);
    }
}

test "from with slices of large integers" {
    const testing = std.testing;
    const allocator = testing.allocator;

    const values = [_]i200{
        (@as(i200, 1) << 80) + 123,
        -((@as(i200, 1) << 90) + 456),
        (@as(i200, 1) << 120) + 789,
    };

    const ruby_array = try Value.allocFrom(allocator, values[0..]);
    try testing.expectEqual(Value.Type.array, ruby_array.getType());

    const arr = Array.fromValue(ruby_array);
    try testing.expectEqual(@as(usize, values.len), @as(usize, @intCast(arr.len())));

    for (values, 0..) |expected_val, i| {
        const elem_value = arr.get(@intCast(i));
        try testing.expectEqual(Value.Type.bignum, elem_value.getType());
        var round_trip = try (try fromValue(elem_value)).toManaged(allocator);
        defer round_trip.deinit();
        var expected = try std.math.big.int.Managed.initSet(allocator, expected_val);
        defer expected.deinit();
        try testing.expectEqual(round_trip.order(expected), .eq);
    }
}

test "from with u256 (unsigned large integer)" {
    const testing = std.testing;
    const allocator = testing.allocator;

    const large_unsigned: u256 = (@as(u256, 1) << 100) + 12345;
    const very_large_unsigned: u256 = (@as(u256, 1) << 200) + 67890;

    {
        const ruby_value = try Value.allocFrom(allocator, large_unsigned);
        try testing.expectEqual(Value.Type.bignum, ruby_value.getType());
        var round_trip = try (try fromValue(ruby_value)).toManaged(allocator);
        defer round_trip.deinit();
        var expected = try std.math.big.int.Managed.initSet(allocator, large_unsigned);
        defer expected.deinit();
        try testing.expectEqual(round_trip.order(expected), .eq);
    }

    {
        const ruby_value = try Value.allocFrom(allocator, very_large_unsigned);
        try testing.expectEqual(Value.Type.bignum, ruby_value.getType());
        var round_trip = try (try fromValue(ruby_value)).toManaged(allocator);
        defer round_trip.deinit();
        var expected = try std.math.big.int.Managed.initSet(allocator, very_large_unsigned);
        defer expected.deinit();
        try testing.expectEqual(round_trip.order(expected), .eq);
    }
}

test "fromType supports primary wide integer types" {
    const testing = std.testing;
    const allocator = testing.allocator;

    const positive: i200 = (@as(i200, 1) << 150) + 12345;
    const negative: i200 = -((@as(i200, 1) << 150) + 12345);
    const odd_width: i123 = (@as(i123, 1) << 100) - 17;

    {
        const bignum = try Self.fromType(i200, positive);
        var round_trip = try bignum.toManaged(allocator);
        defer round_trip.deinit();
        var expected = try std.math.big.int.Managed.initSet(allocator, positive);
        defer expected.deinit();
        try testing.expectEqual(round_trip.order(expected), .eq);
    }

    {
        const bignum = try Self.fromType(i200, negative);
        var round_trip = try bignum.toManaged(allocator);
        defer round_trip.deinit();
        var expected = try std.math.big.int.Managed.initSet(allocator, negative);
        defer expected.deinit();
        try testing.expectEqual(.eq, round_trip.order(expected));
    }

    {
        const bignum = try Self.fromType(i123, odd_width);
        var round_trip = try bignum.toManaged(allocator);
        defer round_trip.deinit();
        var expected = try std.math.big.int.Managed.initSet(allocator, odd_width);
        defer expected.deinit();
        try testing.expectEqual(round_trip.order(expected), .eq);
    }
}

test "fromManaged and toManaged round-trip" {
    const testing = std.testing;
    const allocator = testing.allocator;

    const positive: i200 = (@as(i200, 1) << 150) + 12345;
    const negative: i200 = -((@as(i200, 1) << 150) + 12345);

    {
        var managed = try std.math.big.int.Managed.initSet(allocator, positive);
        defer managed.deinit();

        const bignum = try Self.fromManaged(managed, allocator);
        var round_trip = try bignum.toManaged(allocator);
        defer round_trip.deinit();

        try testing.expectEqual(round_trip.order(managed), .eq);
    }

    {
        var managed = try std.math.big.int.Managed.initSet(allocator, negative);
        defer managed.deinit();

        const bignum = try Self.fromManaged(managed, allocator);
        var round_trip = try bignum.toManaged(allocator);
        defer round_trip.deinit();

        try testing.expectEqual(round_trip.order(managed), .eq);
    }
}

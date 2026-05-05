const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const Fixnum = @import("Fixnum.zig");
const Bignum = @import("Bignum.zig");

pub const Integer = union(enum) {
    fixnum: Fixnum,
    bignum: Bignum,

    const Self = @This();

    pub fn from(value: anytype) !Self {
        const T = @TypeOf(value);

        switch (@typeInfo(T)) {
            .int, .comptime_int => {
                if (value >= Fixnum.min_fixnum and value <= Fixnum.max_fixnum) {
                    return .{ .fixnum = Fixnum.fromInt(@intCast(value)) };
                } else if (value >= std.math.minInt(c_ulonglong) and value <= std.math.maxInt(c_ulonglong)) {
                    const raw = crb.rb_ull2inum(@as(c_ulonglong, @intCast(value)));
                    return .{ .bignum = Bignum.fromValueUnchecked(Value.fromRaw(raw)) };
                } else if (value >= std.math.minInt(c_longlong) and value <= std.math.maxInt(c_longlong)) {
                    const raw = crb.rb_ll2inum(@as(c_longlong, @intCast(value)));
                    return .{ .bignum = Bignum.fromValueUnchecked(Value.fromRaw(raw)) };
                } else {
                    return .{ .bignum = try Bignum.fromType(T, value) };
                }
            },
            else => @compileError("Integer.from requires an integer type, got '" ++ @typeName(T) ++ "'"),
        }
    }

    pub fn asValue(self: Self) Value {
        return switch (self) {
            .fixnum => |f| f.asValue(),
            .bignum => |b| b.asValue(),
        };
    }

    pub fn isFixnum(self: Self) bool {
        return switch (self) {
            .fixnum => true,
            .bignum => false,
        };
    }

    pub fn isBignum(self: Self) bool {
        return switch (self) {
            .fixnum => false,
            .bignum => true,
        };
    }

    pub fn to(self: Self, comptime T: type) !T {
        return switch (self) {
            .fixnum => |f| std.math.cast(T, f.toInt()) orelse error.Overflow,
            .bignum => |b| b.toInt(T),
        };
    }

    pub fn toManaged(self: Self, allocator: std.mem.Allocator) !std.math.big.int.Managed {
        return switch (self) {
            .fixnum => |f| f.toManaged(allocator),
            .bignum => |b| b.toManaged(allocator),
        };
    }
};

const testing = std.testing;

test "fixnum bounds" {
    // CRuby defines fixnum bounds as [MIN_LONG / 2, MAX_LONG / 2]
    try testing.expect((try Integer.from(std.math.maxInt(c_long) / 2)) == .fixnum);
    try testing.expect((try Integer.from(std.math.minInt(c_long) / 2)) == .fixnum);
    try testing.expect((try Integer.from(std.math.maxInt(c_long) / 2 + 1)) == .bignum);
    try testing.expect((try Integer.from(std.math.minInt(c_long) / 2 - 1)) == .bignum);
}

test "small integer types are fixnum" {
    const a: u8 = 129;
    try testing.expect((try Integer.from(a)) == .fixnum);
}

test "large integer types are fixnum if within bounds" {
    const a: u100 = 129;
    try testing.expect((try Integer.from(a)) == .fixnum);
}

test "large integer types are bignum if out of bounds" {
    const a: u100 = 1267650600228229401496703205375;
    const integer = try Integer.from(a);
    try testing.expect(integer == .bignum);

    var managed = try integer.bignum.toManaged(testing.allocator);
    defer managed.deinit();

    var expected = try std.math.big.int.Managed.initSet(testing.allocator, a);
    defer expected.deinit();

    try testing.expectEqual(.eq, expected.order(managed));
}

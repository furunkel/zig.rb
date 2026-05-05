const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const Error = @import("Error.zig");
const RubyError = Error.RubyError;

const Self = @This();

raw: crb.VALUE,

pub fn fromValue(val: Value) Value.ConversionError!Self {
    return val.asSymbol();
}

pub fn fromValueUnchecked(val: Value) Self {
    return .{ .raw = val.asRaw() };
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub fn asRaw(self: Self) crb.VALUE {
    return self.raw;
}

pub fn newUnprotected(str: []const u8) Self {
    return .{ .raw = crb.ID2SYM(crb.rb_intern2(str.ptr, @intCast(str.len))) };
}

pub fn new(str: []const u8) RubyError!Self {
    return Error.protect(str, Self, struct {
        pub fn call(p: *const []const u8) Self {
            return newUnprotected(p.*);
        }
    }.call);
}

pub fn toSlice(self: Self) []const u8 {
    const str_val = crb.rb_id2name(crb.rb_sym2id(self.raw));
    return std.mem.span(str_val);
}

test "symbol round-trip conversions" {
    const testing = std.testing;

    const names = [_][]const u8{
        "test",
        "foo",
        "bar",
        "green",
        "a",
        "symbol_with_underscores",
    };

    for (names) |name| {
        const sym = try Self.new(name);
        try testing.expectEqual(Value.Type.symbol, sym.asValue().getType());
        const round_trip = sym.toSlice();
        try testing.expectEqualSlices(u8, name, round_trip);
    }
}

test "symbol identity" {
    const testing = std.testing;

    // Same symbol name should produce same underlying VALUE
    const sym1 = try Self.new("test");
    const sym2 = try Self.new("test");
    try testing.expectEqual(sym1.asRaw(), sym2.asRaw());

    // Different names should produce different VALUEs
    const sym3 = try Self.new("other");
    try testing.expect(sym1.asRaw() != sym3.asRaw());
}

test "fromValue accepts symbol type" {
    const testing = std.testing;

    const sym = try Self.new("example");
    const val = sym.asValue();
    const result = try Self.fromValue(val);
    try testing.expectEqual(sym.asRaw(), result.asRaw());
}

test "fromValue rejects non-symbol" {
    const testing = std.testing;
    const Fixnum = @import("Fixnum.zig");

    const int_val = Fixnum.fromComptime(42).asValue();
    const result = Self.fromValue(int_val);
    try testing.expectError(Value.ConversionError.TypeError, result);
}

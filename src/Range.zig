const std = @import("std");
const Value = @import("Value.zig");
const crb = @import("crb.zig");
const Self = @This();
const Fixnum = @import("Fixnum.zig");
const Error = @import("Error.zig");
const RubyError = Error.RubyError;

raw: crb.VALUE,

pub const Values = struct {
    begin: Value,
    end: Value,
    exclude_end: bool,
};

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub fn values(self: Self) Values {
    var beg: crb.VALUE = undefined;
    var end: crb.VALUE = undefined;
    var excl: c_int = undefined;

    _ = crb.rb_range_values(self.raw, &beg, &end, &excl);

    return Values{
        .begin = Value.fromRaw(beg),
        .end = Value.fromRaw(end),
        .exclude_end = excl != 0,
    };
}

pub fn newUnprotected(beg: Value, end: Value, exclude_end: bool) Self {
    return .{ .raw = crb.rb_range_new(beg.asRaw(), end.asRaw(), @intFromBool(exclude_end)) };
}

pub fn new(beg: Value, end: Value, exclude_end: bool) RubyError!Self {
    const Args = struct { beg: Value, end: Value, exclude_end: bool };
    const args = Args{ .beg = beg, .end = end, .exclude_end = exclude_end };
    return Error.protect(args, Self, struct {
        pub fn call(p: *const Args) Self {
            return newUnprotected(p.beg, p.end, p.exclude_end);
        }
    }.call);
}

const testing = std.testing;

test values {
    {
        const range = try Self.new(Fixnum.fromInt(0).asValue(), Fixnum.fromInt(1).asValue(), true);
        const vals = range.values();

        try testing.expectEqual(0, (try vals.begin.asFixnum()).toInt());
        try testing.expectEqual(1, (try vals.end.asFixnum()).toInt());
        try testing.expectEqual(true, vals.exclude_end);
    }

    {
        const range = try Self.new(Fixnum.fromInt(1).asValue(), Fixnum.fromInt(2).asValue(), false);
        const vals = range.values();

        try testing.expectEqual(1, (try vals.begin.asFixnum()).toInt());
        try testing.expectEqual(2, (try vals.end.asFixnum()).toInt());
        try testing.expectEqual(false, vals.exclude_end);
    }
}

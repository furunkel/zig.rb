const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const Class = @import("Class.zig");
const Error = @import("Error.zig");
const RubyError = Error.RubyError;

const Self = @This();

raw: crb.VALUE,

pub fn fromValue(val: Value) Self {
    return .{ .raw = val.asRaw() };
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub fn getClass() Class {
    return Class.fromValue(Value.fromRaw(crb.rb_cTime));
}

pub fn fromMilliTimestampUnprotected(ms: i64) Self {
    const sec: crb.time_t = @intCast(@divFloor(ms, 1000));
    const nsec: c_long = @intCast(@mod(ms, 1000) * std.time.ns_per_ms);
    return .{ .raw = crb.rb_time_nano_new(sec, nsec) };
}

pub fn fromMilliTimestamp(ms: i64) RubyError!Self {
    return Error.protect(ms, Self, struct {
        pub fn call(p: *const i64) Self {
            return fromMilliTimestampUnprotected(p.*);
        }
    }.call);
}

pub fn toMilliTimestamp(self: Self) i64 {
    const ts: crb.struct_timespec = crb.rb_time_timespec(self.raw);
    const sec_ms: i64 = @as(i64, ts.tv_sec) * 1000;
    const nsec_ms: i64 = @divFloor(@as(i64, ts.tv_nsec), std.time.ns_per_ms);
    return sec_ms + nsec_ms;
}

pub fn utcOffset(self: Self) Value {
    return Value.fromRaw(crb.rb_time_utc_offset(self.raw));
}

const testing = std.testing;

test "fromMilliTimestamp and toMilliTimestamp round-trip" {
    const timestamps = [_]i64{
        0,
        1000,
        1_700_000_000_000,
        1_234_567_890_123,
        999,
        1,
    };

    for (timestamps) |ms| {
        const time = try Self.fromMilliTimestamp(ms);
        const round_trip = time.toMilliTimestamp();
        try testing.expectEqual(ms, round_trip);
    }
}

test "fromMilliTimestamp with negative timestamps" {
    const timestamps = [_]i64{
        -1,
        -1000,
        -1_234_567_890_123,
        -999,
    };

    for (timestamps) |ms| {
        const time = try Self.fromMilliTimestamp(ms);
        const round_trip = time.toMilliTimestamp();
        try testing.expectEqual(ms, round_trip);
    }
}

test "asValue returns a Ruby Time object" {
    const time = try Self.fromMilliTimestamp(1_700_000_000_000);
    const val = time.asValue();
    try testing.expectEqual(Value.Type.data, val.getType());
}

test "fromValue round-trip" {
    const time = try Self.fromMilliTimestamp(1_700_000_000_000);
    const val = time.asValue();
    const time2 = Self.fromValue(val);
    try testing.expectEqual(time.toMilliTimestamp(), time2.toMilliTimestamp());
}

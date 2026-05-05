const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const Fixnum = @import("Fixnum.zig");
const Error = @import("Error.zig");
const RubyError = Error.RubyError;

const Self = @This();

raw: crb.VALUE,

pub fn new() Self {
    return .{ .raw = crb.rb_ary_new() };
}

pub fn newWithCapacityUnprotected(capacity: usize) Self {
    return .{ .raw = crb.rb_ary_new_capa(@as(c_long, @intCast(capacity))) };
}

pub fn newWithCapacity(capacity: usize) RubyError!Self {
    return Error.protect(capacity, Self, struct {
        pub fn call(p: *const usize) Self {
            return newWithCapacityUnprotected(p.*);
        }
    }.call);
}

pub fn fromValue(val: Value) Self {
    return .{ .raw = val.asRaw() };
}

pub fn fromSlice(allocator: std.mem.Allocator, comptime T: type, slice: []const T) !Self {
    const arr = newWithCapacityUnprotected(@intCast(slice.len));
    for (slice) |item| {
        arr.pushUnprotected(try Value.allocFrom(allocator, item));
    }
    return arr;
}

pub fn len(self: Self) usize {
    return @intCast(crb.RARRAY_LEN(self.raw));
}

pub fn isEmpty(self: Self) bool {
    return self.len() == 0;
}

pub fn get(self: Self, index: usize) Value {
    return Value.fromRaw(crb.rb_ary_entry(self.raw, @intCast(index)));
}

pub fn setUnprotected(self: Self, index: usize, val: Value) void {
    crb.rb_ary_store(self.raw, @intCast(index), val.asRaw());
}

pub fn set(self: Self, index: usize, val: Value) RubyError!void {
    const Args = struct { self: Self, index: usize, val: Value };
    const args = Args{ .self = self, .index = index, .val = val };
    return Error.protect(args, void, struct {
        pub fn call(p: *const Args) void {
            p.self.setUnprotected(p.index, p.val);
        }
    }.call);
}

pub fn pushUnprotected(self: Self, val: Value) void {
    _ = crb.rb_ary_push(self.raw, val.asRaw());
}

pub fn push(self: Self, val: Value) RubyError!void {
    const Args = struct { self: Self, val: Value };
    const args = Args{ .self = self, .val = val };
    return Error.protect(args, void, struct {
        pub fn call(p: *const Args) void {
            p.self.pushUnprotected(p.val);
        }
    }.call);
}

pub fn popUnprotected(self: Self) Value {
    return Value.fromRaw(crb.rb_ary_pop(self.raw));
}

pub fn pop(self: Self) RubyError!Value {
    return Error.protect(self, Value, struct {
        pub fn call(p: *const Self) Value {
            return p.popUnprotected();
        }
    }.call);
}

pub fn shiftUnprotected(self: Self) Value {
    return Value.fromRaw(crb.rb_ary_shift(self.raw));
}

pub fn shift(self: Self) RubyError!Value {
    return Error.protect(self, Value, struct {
        pub fn call(p: *const Self) Value {
            return p.shiftUnprotected();
        }
    }.call);
}

pub fn unshiftUnprotected(self: Self, val: Value) void {
    _ = crb.rb_ary_unshift(self.raw, val.asRaw());
}

pub fn unshift(self: Self, val: Value) RubyError!void {
    const Args = struct { self: Self, val: Value };
    const args = Args{ .self = self, .val = val };
    return Error.protect(args, void, struct {
        pub fn call(p: *const Args) void {
            p.self.unshiftUnprotected(p.val);
        }
    }.call);
}

pub fn clearUnprotected(self: Self) void {
    _ = crb.rb_ary_clear(self.raw);
}

pub fn clear(self: Self) RubyError!void {
    return Error.protect(self, void, struct {
        pub fn call(p: *const Self) void {
            p.clearUnprotected();
        }
    }.call);
}

pub fn reverseUnprotected(self: Self) void {
    _ = crb.rb_ary_reverse(self.raw);
}

pub fn reverse(self: Self) RubyError!void {
    return Error.protect(self, void, struct {
        pub fn call(p: *const Self) void {
            p.reverseUnprotected();
        }
    }.call);
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub const Iterator = struct {
    array: Self,
    index: usize,

    pub fn next(self: *Iterator) ?Value {
        if (self.index >= self.array.len()) {
            return null;
        }
        const val = Value.fromRaw(crb.RARRAY_AREF(self.array.raw, @as(c_long, @intCast(self.index))));
        self.index += 1;
        return val;
    }
};

pub fn iterator(self: Self) Iterator {
    return .{ .array = self, .index = 0 };
}

const testing = std.testing;

test "create empty array" {
    const arr = new();
    try testing.expectEqual(@as(usize, 0), arr.len());
    try testing.expect(arr.isEmpty());
}

test "push and get elements" {
    const arr = new();
    arr.pushUnprotected(Fixnum.fromComptime(1).asValue());
    arr.pushUnprotected(Fixnum.fromComptime(2).asValue());
    arr.pushUnprotected(Fixnum.fromComptime(3).asValue());

    try testing.expectEqual(@as(usize, 3), arr.len());
    try testing.expectEqual(@as(c_int, 1), try arr.get(0).to(c_int));
    try testing.expectEqual(@as(c_int, 2), try arr.get(1).to(c_int));
    try testing.expectEqual(@as(c_int, 3), try arr.get(2).to(c_int));
}

test "pop and shift" {
    const arr = new();
    arr.pushUnprotected(Fixnum.fromComptime(1).asValue());
    arr.pushUnprotected(Fixnum.fromComptime(2).asValue());
    arr.pushUnprotected(Fixnum.fromComptime(3).asValue());

    const popped = arr.popUnprotected();
    try testing.expectEqual(@as(c_int, 3), try popped.to(c_int));
    try testing.expectEqual(@as(usize, 2), arr.len());

    const shifted = arr.shiftUnprotected();
    try testing.expectEqual(@as(c_int, 1), try shifted.to(c_int));
    try testing.expectEqual(@as(usize, 1), arr.len());
}

test "iterator" {
    const arr = new();
    arr.pushUnprotected(Fixnum.fromComptime(10).asValue());
    arr.pushUnprotected(Fixnum.fromComptime(20).asValue());
    arr.pushUnprotected(Fixnum.fromComptime(30).asValue());

    var iter = arr.iterator();
    var sum: c_int = 0;
    while (iter.next()) |val| {
        sum += try val.to(c_int);
    }

    try testing.expectEqual(@as(c_int, 60), sum);
}

test "fromSlice" {
    const allocator = std.testing.allocator;
    const slice = [_]c_int{ 5, 10, 15, 20 };
    const arr = try fromSlice(allocator, c_int, &slice);

    try testing.expectEqual(@as(usize, 4), arr.len());
    try testing.expectEqual(@as(c_int, 5), try arr.get(0).to(c_int));
    try testing.expectEqual(@as(c_int, 20), try arr.get(3).to(c_int));
}

test "clear" {
    const arr = new();
    arr.pushUnprotected(Fixnum.fromComptime(1).asValue());
    arr.pushUnprotected(Fixnum.fromComptime(2).asValue());
    try testing.expectEqual(@as(usize, 2), arr.len());

    arr.clearUnprotected();
    try testing.expectEqual(@as(usize, 0), arr.len());
    try testing.expect(arr.isEmpty());
}

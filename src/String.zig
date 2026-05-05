const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const Fixnum = @import("Fixnum.zig");
const Float = @import("Float.zig");
const Error = @import("Error.zig");
const RubyError = Error.RubyError;

const Self = @This();

raw: crb.VALUE,

pub fn fromValue(val: Value) Value.ConversionError!Self {
    return val.asString();
}

pub fn fromValueUnchecked(value: Value) Self {
    return .{ .raw = value.asRaw() };
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub fn newUnprotected(str: []const u8) Self {
    return .{ .raw = crb.rb_str_new(str.ptr, @intCast(str.len)) };
}

pub fn new(str: []const u8) RubyError!Self {
    return Error.protect(str, Self, struct {
        pub fn call(p: *const []const u8) Self {
            return newUnprotected(p.*);
        }
    }.call);
}

pub fn newFrozenUnprotected(str: []const u8) Self {
    return .{ .raw = crb.rb_str_freeze(crb.rb_str_new(str.ptr, @intCast(str.len))) };
}

pub fn newFrozen(str: []const u8) RubyError!Self {
    return Error.protect(str, Self, struct {
        pub fn call(p: *const []const u8) Self {
            return newFrozenUnprotected(p.*);
        }
    }.call);
}

pub fn from(str: []const u8) Self {
    return newUnprotected(str);
}

pub fn fromCStr(str: [*:0]const u8) Self {
    return newUnprotected(std.mem.span(str));
}

pub const Encoding = enum {
    ascii_8bit,
    utf8,
    us_ascii,
    locale,
    filesystem,
    default_external,

    pub fn toRbEncoding(self: Encoding) [*c]const crb.rb_encoding {
        return switch (self) {
            .ascii_8bit => crb.rb_ascii8bit_encoding(),
            .utf8 => crb.rb_utf8_encoding(),
            .us_ascii => crb.rb_usascii_encoding(),
            .locale => crb.rb_locale_encoding(),
            .filesystem => crb.rb_filesystem_encoding(),
            .default_external => crb.rb_default_external_encoding(),
        };
    }
};

pub fn newEncodedUnprotected(bytes: []const u8, encoding: Encoding) Self {
    return .{ .raw = crb.rb_enc_str_new(bytes.ptr, @intCast(bytes.len), encoding.toRbEncoding()) };
}

pub fn newEncoded(bytes: []const u8, encoding: Encoding) RubyError!Self {
    const Args = struct { bytes: []const u8, encoding: Encoding };
    const args = Args{ .bytes = bytes, .encoding = encoding };
    return Error.protect(args, Self, struct {
        pub fn call(p: *const Args) Self {
            return newEncodedUnprotected(p.bytes, p.encoding);
        }
    }.call);
}

pub fn newEncodedFrozenUnprotected(bytes: []const u8, encoding: Encoding) Self {
    return .{ .raw = crb.rb_str_freeze(crb.rb_enc_str_new(bytes.ptr, @intCast(bytes.len), encoding.toRbEncoding())) };
}

pub fn newEncodedFrozen(bytes: []const u8, encoding: Encoding) RubyError!Self {
    const Args = struct { bytes: []const u8, encoding: Encoding };
    const args = Args{ .bytes = bytes, .encoding = encoding };
    return Error.protect(args, Self, struct {
        pub fn call(p: *const Args) Self {
            return newEncodedFrozenUnprotected(p.bytes, p.encoding);
        }
    }.call);
}

pub fn toSlice(self: Self) []const u8 {
    const ptr = crb.RSTRING_PTR(self.raw);
    const len = crb.RSTRING_LEN(self.raw);
    return ptr[0..@intCast(len)];
}

pub fn toOwnedSlice(self: Self, allocator: std.mem.Allocator) std.mem.Allocator.Error![]const u8 {
    const slice = self.toSlice();
    const result = try allocator.alloc(u8, slice.len);
    @memcpy(result, slice);
    return result;
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

test "encoded string round-trip conversions" {
    const testing = std.testing;

    const bytes = [_]u8{ 0x00, 0xff, 0xfe, 0x80, 0x01 };
    const slice = bytes[0..];

    const ruby_value = try Self.newEncoded(slice, .ascii_8bit);
    const round_trip = ruby_value.toSlice();
    try testing.expectEqualSlices(u8, slice, round_trip);
}

test "string round-trip conversions" {
    const testing = std.testing;

    const bytes = [_]u8{ 'b', 'y', 't', 'e', 0, 's', '!', 0xff };
    const slice = bytes[0..];

    const ruby_value = try Self.new(slice);
    const round_trip = ruby_value.toSlice();
    try testing.expectEqualSlices(u8, slice, round_trip);
}

test "toS converts values to string" {
    const testing = std.testing;
    const allocator = testing.allocator;

    {
        const int_val = Fixnum.fromComptime(42).asValue();
        const str = try (try int_val.toS()).toOwnedSlice(allocator);
        defer allocator.free(str);
        try testing.expectEqualStrings("42", str);
    }

    {
        const float_val = Float.fromComptime(3.14).asValue();
        const str = try (try float_val.toS()).toOwnedSlice(allocator);
        defer allocator.free(str);
        try testing.expectEqualStrings("3.14", str);
    }

    {
        const str_val = try Self.new("hello");
        const str = try (try str_val.asValue().toS()).toOwnedSlice(allocator);
        defer allocator.free(str);
        try testing.expectEqualStrings("hello", str);
    }

    {
        const bool_val = Value.true;
        const str = try (try bool_val.toS()).toOwnedSlice(allocator);
        defer allocator.free(str);
        try testing.expectEqualStrings("true", str);
    }
}

test "toS converts objects to string" {
    const testing = std.testing;
    const allocator = testing.allocator;

    _ = crb.rb_eval_string(
        \\class ToSTest
        \\  def to_s
        \\    "custom_string"
        \\  end
        \\end
    );
    const obj = Value.fromRaw(crb.rb_eval_string("ToSTest.new"));
    const str = try (try obj.toS()).toOwnedSlice(allocator);
    defer allocator.free(str);
    try testing.expectEqualStrings("custom_string", str);
}

test stringValueCStr {
    const testing = std.testing;

    {
        const rb_str = try Self.new("hello");
        const c_str = try rb_str.stringValueCStr();
        try testing.expectEqualSentinel(u8, 0, "hello", c_str);
    }

    {
        const rb_str = try Self.new("h\x00ello");
        const c_str = rb_str.stringValueCStr();
        try testing.expectError(error.ContainsNullByte, c_str);
    }
}

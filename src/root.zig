const std = @import("std");
pub const crb = @import("crb.zig");
const testing = std.testing;
const Allocator = std.mem.Allocator;
pub const RubyAllocator = @import("RubyAllocator.zig");

pub const Value = @import("Value.zig");
pub const typed_data = @import("typed_data.zig");
pub const Module = @import("Module.zig");
pub const Class = @import("Class.zig");
pub const Error = @import("Error.zig");
pub const Array = @import("Array.zig");
pub const Hash = @import("Hash.zig");
pub const Struct = @import("Struct.zig");
pub const Data = @import("Data.zig");
pub const Time = @import("Time.zig");
pub const Float = @import("Float.zig");
pub const Bignum = @import("Bignum.zig");
pub const String = @import("String.zig");
pub const Fixnum = @import("Fixnum.zig");
pub const Integer = @import("integer.zig").Integer;
pub const Range = @import("Range.zig");
pub const Symbol = @import("Symbol.zig");
pub const version = @import("version.zig");
const ids = @import("ids.zig");

pub fn init() void {
    ids.modInit();

    const allocator = RubyAllocator.default().allocator();
    Error.modInit(allocator);
}

test {
    std.testing.log_level = .debug;

    _ = Value;
    // _ = TypedDataClass;
    _ = typed_data;
    _ = Module;
    _ = Error;
    _ = Array;
    _ = Hash;
    _ = Struct;
    _ = Data;
    _ = Time;
    _ = Float;
    _ = Bignum;
    _ = String;
    _ = Fixnum;
    _ = Integer;
    _ = Range;
    _ = Symbol;
}

test "tests:beforeAll" {
    crb.ruby_init();
    ids.modInit();
}

test "tests:afterAll" {
    _ = crb.ruby_cleanup(0);
}

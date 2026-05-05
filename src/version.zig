const crb = @import("crb.zig");

pub const major: comptime_int = crb.RUBY_API_VERSION_MAJOR;
pub const minor: comptime_int = crb.RUBY_API_VERSION_MINOR;
pub const teeny: comptime_int = crb.RUBY_API_VERSION_TEENY;

pub fn atLeast(comptime maj: comptime_int, comptime min: comptime_int, comptime tny: comptime_int) bool {
    if (major != maj) return major > maj;
    if (minor != min) return minor > min;
    return teeny >= tny;
}

pub fn is(comptime maj: comptime_int, comptime min: comptime_int, comptime tny: comptime_int) bool {
    return major == maj and minor == min and teeny == tny;
}

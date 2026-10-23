const std = @import("std");
const crb = @import("../crb.zig");
const Error = @import("../Error.zig");

const Self = @This();
map: std.StringHashMap(Error.Class),

pub fn init(allocator: std.mem.Allocator) Self {
    return .{
        .map = .init(allocator),
    };
}

fn errorSetToKey(err_set: anytype) []const u8 {
    const type_info = @typeInfo(err_set);
    const error_set_info = type_info.error_set;

    var key: []const u8 = "";
    if (error_set_info.error_names) |error_names| {
        inline for (error_names) |err_name| {
            key = key ++ "||" ++ err_name;
        }
    }
    return key;
}

pub fn register(self: *Self, err_set: anytype, error_cls: Error.Class) !void {
    const key = comptime errorSetToKey(err_set);
    // std.log.warn("Registering '{s}'", .{key});
    try self.map.put(key, error_cls);
}

pub fn get(self: *const Self, err_set: anytype) ?Error.Class {
    const key = comptime errorSetToKey(err_set);
    // std.log.warn("Fetching '{s}'", .{key});
    return self.map.get(key);
}

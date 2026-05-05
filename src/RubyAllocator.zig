const std = @import("std");
const crb = @import("crb.zig");
const Self = @This();
const Allocator = std.mem.Allocator;

pub fn default() Self {
    return .{};
}

pub fn allocator(self: *const Self) Allocator {
    return .{
        .ptr = @constCast(self),
        .vtable = &.{
            .alloc = alloc,
            .remap = remap,
            .resize = resize,
            .free = free,
        },
    };
}

fn alloc(ctx: *anyopaque, len: usize, alignment: std.mem.Alignment, ret_addr: usize) ?[*]u8 {
    _ = ret_addr;
    _ = ctx;

    return alignPtr(@as([*]u8, @ptrCast(crb.xmalloc(len + alignment.toByteUnits()) orelse return null)), alignment);
}

fn resize(ctx: *anyopaque, memory: []u8, alignment: std.mem.Alignment, new_len: usize, ret_addr: usize) bool {
    _ = ctx;
    _ = ret_addr;
    _ = memory;
    _ = alignment;
    _ = new_len;
    _ = ret_addr;
    return false;
}

fn unalignPtr(memory: [*]u8, alignment: std.mem.Alignment) [*]u8 {
    _ = alignment;

    const aligned_addr = @intFromPtr(memory);
    const offset = @as(*u8, @ptrFromInt(aligned_addr - 1)).*;
    const original_addr = aligned_addr - offset;
    return @ptrFromInt(original_addr);
}

fn alignPtr(memory: [*]u8, alignment: std.mem.Alignment) [*]u8 {
    const addr: usize = @intFromPtr(memory);
    var aligned_addr = alignment.forward(addr);
    if (aligned_addr == addr) {
        aligned_addr += alignment.toByteUnits();
    }
    const offset = aligned_addr - addr;
    std.debug.assert(offset >= 1 and offset <= alignment.toByteUnits());

    @as(*u8, @ptrFromInt(aligned_addr - 1)).* = @intCast(offset);
    return @ptrFromInt(aligned_addr);
}

fn remap(ctx: *anyopaque, memory: []u8, alignment: std.mem.Alignment, new_len: usize, ret_addr: usize) ?[*]u8 {
    _ = ctx;
    _ = ret_addr;

    return alignPtr(@ptrCast(crb.xrealloc(unalignPtr(memory.ptr, alignment), new_len + alignment.toByteUnits())), alignment);
}

fn free(ctx: *anyopaque, memory: []u8, alignment: std.mem.Alignment, ret_addr: usize) void {
    _ = ctx;
    _ = ret_addr;
    crb.xfree(unalignPtr(memory.ptr, alignment));
}

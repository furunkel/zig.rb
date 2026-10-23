const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const methods = @import("methods.zig");

raw: crb.VALUE,
const Self = @This();

pub fn fromValue(value: Value) Self {
    return .{ .raw = value.asRaw() };
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub const DefineOptions = struct {
    outer: ?Self = null,
};

pub fn define(name: [:0]const u8, options: DefineOptions) Self {
    if (options.outer) |outer| {
        return .{ .raw = crb.rb_define_module_under(outer.asValue().asRaw(), name) };
    } else {
        return .{ .raw = crb.rb_define_module(name) };
    }
}

pub fn defineConstant(self: Self, comptime name: [:0]const u8, value: Value) void {
    crb.rb_define_const(self.raw, name, value.asRaw());
}

pub fn defineConstants(self: Self, allocator: std.mem.Allocator, comptime Constants: type) void {
    switch (@typeInfo(Constants)) {
        .@"struct" => |info| {
            inline for (info.decl_names) |decl_name| {
                comptime var buf: [decl_name.len:0]u8 = undefined;
                const decl_name_upper = comptime std.ascii.upperString(&buf, decl_name);
                if (comptime std.mem.eql(u8, decl_name, decl_name_upper)) {
                    const decl_field = @field(Constants, decl_name);
                    self.defineConstant(decl_name, Value.allocFrom(allocator, decl_field) catch Value.nil);
                }
            }
        },
        else => @compileError("Constants must be a struct, got " ++ @typeName(Constants)),
    }
}

pub fn defineFunction(
    self: Self,
    comptime name: [:0]const u8,
    comptime zig_func: anytype,
) void {
    methods.validate(null, zig_func);
    const arity = comptime methods.getArity(zig_func);
    const wrapper = methods.wrap(null, zig_func, arity);
    crb.rb_define_module_function(self.raw, name, @ptrCast(wrapper), @intCast(arity));
}

pub fn defineFunctions(
    self: Self,
    comptime Functions: type,
) void {
    switch (@typeInfo(Functions)) {
        .@"struct" => |info| {
            inline for (info.decl_names) |decl_name| {
                const func = @field(Functions, decl_name);
                if (@typeInfo(@TypeOf(func)) == .@"fn") {
                    self.defineFunction(decl_name, func);
                }
            }
        },
        else => @compileError("Functions must be a struct, got " ++ @typeName(Functions)),
    }
}

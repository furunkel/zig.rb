const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const Module = @import("Module.zig");
const methods = @import("methods.zig");

raw: crb.VALUE,
const Self = @This();

pub fn fromValue(value: Value) Self {
    return .{ .raw = value.asRaw() };
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub fn asModule(self: Self) Module {
    return Module.fromValue(self.asValue());
}

pub const DefineOptions = struct {
    outer: ?Value = null,
};

pub fn define(name: [:0]const u8, options: DefineOptions) Self {
    if (options.outer) |outer| {
        return .{ .raw = crb.rb_define_class_under(outer.asRaw(), name) };
    } else {
        return .{ .raw = crb.rb_define_class(name) };
    }
}

pub fn defineMethod(
    self: Self,
    comptime name: [:0]const u8,
    comptime zig_func: anytype,
) void {
    methods.defineMethod(self.asValue(), name, null, zig_func);
}

// move to methods and also expose on Module?
pub fn defineAttrReader(
    self: Self,
    name: [:0]const u8,
) void {
    crb.rb_define_attr(self.raw, name, 1, 0);
}

pub fn defineAttrWriter(
    self: Self,
    name: [:0]const u8,
) void {
    crb.rb_define_attr(self.raw, name, 0, 1);
}

pub fn defineAttrAccessor(
    self: Self,
    name: [:0]const u8,
) void {
    crb.rb_define_attr(self.raw, name, 1, 1);
}

pub fn definePrivateMethod(
    self: Self,
    comptime name: [:0]const u8,
    comptime zig_func: anytype,
) void {
    methods.definePrivateMethod(self.asValue(), name, null, zig_func);
}

pub fn defineProtectedMethod(
    self: Self,
    comptime name: [:0]const u8,
    comptime zig_func: anytype,
) void {
    methods.defineProtectedMethod(self.asValue(), name, null, zig_func);
}

pub fn defineSingletonMethod(
    self: Self,
    comptime name: [:0]const u8,
    comptime zig_func: anytype,
) void {
    methods.defineSingletonMethod(self.asValue(), name, zig_func);
}

pub fn defineMethods(
    self: Self,
    comptime Methods: type,
) void {
    methods.defineMethods(self.asValue(), null, Methods);
}

pub fn definePrivateMethods(
    self: Self,
    comptime Methods: type,
) void {
    methods.definePrivateMethods(self.asValue(), null, Methods);
}

pub fn defineProtectedMethods(
    self: Self,
    comptime Methods: type,
) void {
    methods.defineProtectedMethods(self.asValue(), null, Methods);
}

pub fn defineSingletonMethods(
    self: Self,
    comptime Methods: type,
) void {
    methods.defineSingletonMethods(self.asValue(), Methods);
}

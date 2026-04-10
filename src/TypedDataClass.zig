const std = @import("std");
const crb = @import("crb.zig").crb;
const Value = @import("Value.zig");
const RubyAllocator = @import("RubyAllocator.zig");
const methods = @import("methods.zig");

const Self = @This();

raw: crb.VALUE,

pub fn define(name: [:0]const u8) Self {
    return .{ .raw = crb.rb_define_class(name, crb.rb_cObject) };
}

pub fn defineWithSuper(name: [:0]const u8, super: Value) Self {
    return .{ .raw = crb.rb_define_class(name, super.toRaw()) };
}

pub fn fromRaw(raw: crb.VALUE) Self {
    return .{ .raw = raw };
}

pub fn toRaw(self: Self) crb.VALUE {
    return self.raw;
}

pub fn defineConstant(self: Self, name: [:0]const u8, value: Value) void {
    crb.rb_define_const(self.raw, name, value.toRaw());
}

pub fn defineConstantRaw(self: Self, name: [:0]const u8, value: crb.VALUE) void {
    crb.rb_define_const(self.raw, name, value);
}

pub fn defineConstants(self: Self, comptime Constants: type) void {
    switch (@typeInfo(Constants)) {
        .@"struct" => |info| {
            inline for (info.decls) |decl| {
                const const_name = decl.name;
                comptime var buf: [decl.name.len:0]u8 = undefined;
                const const_name_upper = comptime std.ascii.upperString(&buf, const_name);
                if (comptime std.mem.eql(u8, const_name, const_name_upper)) {
                    const const_field = @field(Constants, const_name);
                    self.defineConstant(const_name, Value.from(const_field));
                }
            }
        },
        else => @compileError("Constants must be a struct, got " ++ @typeName(Constants)),
    }
}

pub fn defineMethod(
    self: Self,
    comptime Data: type,
    comptime zig_func: anytype,
    comptime name: [:0]const u8,
) void {
    methods.validate(Data, zig_func);
    const arity = comptime methods.getArity(zig_func);
    const wrapper = methods.wrap(Data, zig_func, arity);
    crb.rb_define_method(self.raw, name,
        @ptrCast(@alignCast(wrapper)), @intCast(arity));
}

pub fn definePrivateMethod(
    self: Self,
    comptime Data: type,
    comptime zig_func: anytype,
    comptime name: [:0]const u8,
) void {
    methods.validate(Data, zig_func);
    const arity = comptime methods.getArity(zig_func);
    const wrapper = methods.wrap(Data, zig_func, arity);
    crb.rb_define_private_method(self.raw, name,
        @ptrCast(@alignCast(wrapper)), @intCast(arity));
}

pub fn defineProtectedMethod(
    self: Self,
    comptime Data: type,
    comptime zig_func: anytype,
    comptime name: [:0]const u8,
) void {
    methods.validate(Data, zig_func);
    const arity = comptime methods.getArity(zig_func);
    const wrapper = methods.wrap(Data, zig_func, arity);
    crb.rb_define_protected_method(self.raw, name,
        @ptrCast(@alignCast(wrapper)), @intCast(arity));
}

pub fn defineSingletonMethod(
    self: Self,
    comptime zig_func: anytype,
    comptime name: [:0]const u8,
) void {
    methods.validate(null, zig_func);
    const arity = comptime methods.getArity(zig_func);
    const wrapper = methods.wrap(null, zig_func, arity);
    crb.rb_define_singleton_method(self.raw, name,
        @ptrCast(@alignCast(wrapper)), @intCast(arity));
}

pub fn defineMethods(
    self: Self,
    comptime Data: type,
    comptime Methods: type,
) void {
    switch (@typeInfo(Methods)) {
        .@"struct" => |info| {
            inline for (info.decls) |decl| {
                const method_name = decl.name;
                const func = @field(Methods, method_name);
                self.defineMethod(Data, func, method_name);
            }
        },
        else => @compileError("Methods must be a struct, got " ++ @typeName(Methods)),
    }
}

pub fn definePrivateMethods(
    self: Self,
    comptime Data: type,
    comptime Methods: type,
) void {
    switch (@typeInfo(Methods)) {
        .@"struct" => |info| {
            inline for (info.decls) |decl| {
                const method_name = decl.name;
                const func = @field(Methods, method_name);
                self.definePrivateMethod(Data, func, method_name);
            }
        },
        else => @compileError("Methods must be a struct, got " ++ @typeName(Methods)),
    }
}

pub fn defineProtectedMethods(
    self: Self,
    comptime Data: type,
    comptime Methods: type,
) void {
    switch (@typeInfo(Methods)) {
        .@"struct" => |info| {
            inline for (info.decls) |decl| {
                const method_name = decl.name;
                const func = @field(Methods, method_name);
                self.defineProtectedMethod(Data, func, method_name);
            }
        },
        else => @compileError("Methods must be a struct, got " ++ @typeName(Methods)),
    }
}

pub fn defineSingletonMethods(
    self: Self,
    comptime Methods: type,
) void {
    switch (@typeInfo(Methods)) {
        .@"struct" => |info| {
            inline for (info.decls) |decl| {
                const method_name = decl.name;
                const func = @field(Methods, method_name);
                self.defineSingletonMethod(func, method_name);
            }
        },
        else => @compileError("Methods must be a struct, got " ++ @typeName(Methods)),
    }
}

pub fn defineAllocFunc(
    self: Self,
    comptime Data: type,
) void {
    crb.rb_define_alloc_func(self.raw, Data.ruby_type.alloc_func);
}

pub fn DataType(comptime T: type) type {
    return struct {
        rb_data_type: crb.rb_data_type_t,
        alloc_func: fn (rb_class: crb.VALUE) callconv(.c) crb.VALUE,

        pub inline fn unwrap(self: *const @This(), rb_value: crb.VALUE) *T {
            return @ptrCast(@alignCast(crb.rb_check_typeddata(rb_value, &self.rb_data_type)));
        }

        pub inline fn wrap(self: *const @This(), ptr: *T, rb_class: crb.VALUE) crb.VALUE {
            return crb.rb_data_typed_object_wrap(rb_class, ptr, &self.rb_data_type);
        }

        pub fn markAll(data: *T) void {
            const type_info = @typeInfo(T);
            switch (type_info) {
                .@"struct" => |struct_info| {
                    inline for (struct_info.fields) |field| {
                        if (field.type == Value) {
                            const value = @field(data, field.name);
                            crb.rb_gc_mark(value.toRaw());
                        } else if (field.type == crb.VALUE) {
                            const value = @field(data, field.name);
                            crb.rb_gc_mark(value);
                        }
                    }
                },
                else => {},
            }
        }
    };
}

pub fn createDataType(
    comptime Data: type,
    comptime class_name: [:0]const u8,
    comptime Funcs: type,
) DataType(Data) {
    const mark_func = struct {
        fn mark(zig_self: ?*anyopaque) callconv(.c) void {
            const zig_mark_func = @field(Funcs, "mark");
            @call(
                std.builtin.CallModifier.auto,
                zig_mark_func,
                .{@as(*Data, @ptrCast(@alignCast(zig_self)))},
            );
        }
    }.mark;

    const free_func = struct {
        fn free(zig_self: ?*anyopaque) callconv(.c) void {
            const zig_free_func = @field(Funcs, "free");
            const allocator: RubyAllocator = .{};
            @call(
                std.builtin.CallModifier.auto,
                zig_free_func,
                .{ @as(*Data, @ptrCast(@alignCast(zig_self))), allocator.allocator() },
            );
        }
    }.free;

    const alloc_func = struct {
        fn alloc(rb_class: crb.VALUE) callconv(.c) crb.VALUE {
            const zigAllocFunc = @field(Funcs, "alloc");
            const allocator: RubyAllocator = .{};
            const data_ptr = @call(
                std.builtin.CallModifier.auto,
                zigAllocFunc,
                .{ Value.fromRaw(rb_class), allocator.allocator() },
            );
            return crb.rb_data_typed_object_wrap(rb_class, data_ptr, &Data.ruby_type.rb_data_type);
        }
    }.alloc;

    return .{
        .rb_data_type = .{
            .wrap_struct_name = class_name,
            .function = .{
                .dmark = &mark_func,
                .dfree = &free_func,
                .dsize = null,
            },
            .data = null,
            .flags = crb.RUBY_TYPED_FREE_IMMEDIATELY,
        },
        .alloc_func = alloc_func,
    };
}

pub fn defineFromStructs(comptime class_name: [:0]const u8, comptime Data: type) Self {
    const class = Self.define(class_name);

    if (@hasDecl(Data, "classInit")) {
        const classInitFunc = @field(Data, "classInit");
        @call(std.builtin.CallModifier.auto, classInitFunc, .{class.raw});
    }

    class.defineAllocFunc(Data);

    if (@hasDecl(Data, "InstanceMethods")) {
        class.defineMethods(Data, @field(Data, "InstanceMethods"));
    }

    if (@hasDecl(Data, "SingletonMethods")) {
        class.defineSingletonMethods(@field(Data, "SingletonMethods"));
    }

    if (@hasDecl(Data, "Constants")) {
        class.defineConstants(@field(Data, "Constants"));
    }

    return class;
}

const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const RubyAllocator = @import("RubyAllocator.zig");
const methods = @import("methods.zig");
const Module = @import("Module.zig");
const RbClass = @import("Class.zig");

pub fn AllocFn(comptime T: type) type {
    return *const fn (class: Value, allocator: std.mem.Allocator) ?*T;
}

pub const Class = struct {
    raw: crb.VALUE,

    pub const DefineOptions = struct {
        super: ?Value = null,
        outer: ?Value = null,
    };

    pub fn define(allocator: std.mem.Allocator, comptime T: type, options: DefineOptions) Class {
        const full_name = @typeName(T);
        const class_name = comptime blk: {
            var last_dot: usize = 0;
            var found_dot = false;
            for (full_name, 0..) |c, i| {
                if (c == '.') {
                    last_dot = i;
                    found_dot = true;
                }
            }
            const start = if (found_dot) last_dot + 1 else 0;
            break :blk full_name[start..full_name.len :0];
        };
        const super = options.super orelse Value.objectClass();
        const class: Class = if (options.outer) |outer|
            .{ .raw = crb.rb_define_class_under(outer.asRaw(), class_name, super.asRaw()) }
        else
            .{ .raw = crb.rb_define_class(class_name, super.asRaw()) };

        if (@hasDecl(T, "classInit")) {
            @field(T, "classInit")(class);
        }

        if (@hasDecl(T, "alloc")) {
            class.defineAllocFunc(T, @field(T, "alloc"));
        }

        if (@hasDecl(T, "InstanceMethods")) {
            class.defineMethods(T, @field(T, "InstanceMethods"));
        }

        if (@hasDecl(T, "SingletonMethods")) {
            class.defineSingletonMethods(@field(T, "SingletonMethods"));
        }

        if (@hasDecl(T, "Constants")) {
            class.asModule().defineConstants(allocator, @field(T, "Constants"));
        }

        return class;
    }

    pub fn fromValue(value: Value) Class {
        return .{ .raw = value.asRaw() };
    }

    pub fn asValue(self: Class) Value {
        return Value.fromRaw(self.raw);
    }

    pub fn asModule(self: Class) Module {
        return Module.fromValue(self.asValue());
    }

    pub fn asClass(self: Class) RbClass {
        return RbClass.fromValue(self.asValue());
    }

    pub fn newInstance(self: Class, args: []Value) Value {
        return Value.fromRaw(crb.rb_class_new_instance(@intCast(args.len), @ptrCast(args.ptr), self.raw));
    }

    pub fn defineAllocFunc(self: Class, comptime T: type, comptime alloc_func: AllocFn(T)) void {
        const wrapper = struct {
            fn alloc(rb_class: crb.VALUE) callconv(.c) crb.VALUE {
                const allocator: RubyAllocator = .{};
                const data_ptr = alloc_func(Value.fromRaw(rb_class), allocator.allocator());
                if (data_ptr) |ptr| {
                    return crb.rb_data_typed_object_wrap(rb_class, ptr, &DataType(T).get().rb_data_type);
                }
                return crb.Qnil;
            }
        };
        crb.rb_define_alloc_func(self.raw, wrapper.alloc);
    }

    pub fn defineMethod(
        self: Class,
        comptime Data: type,
        comptime zig_func: anytype,
        comptime name: [:0]const u8,
    ) void {
        methods.defineMethod(self.asValue(), Data, zig_func, name);
    }

    pub fn definePrivateMethod(
        self: Class,
        comptime Data: type,
        comptime zig_func: anytype,
        comptime name: [:0]const u8,
    ) void {
        methods.definePrivateMethod(self.asValue(), Data, zig_func, name);
    }

    pub fn defineProtectedMethod(
        self: Class,
        comptime Data: type,
        comptime zig_func: anytype,
        comptime name: [:0]const u8,
    ) void {
        methods.defineProtectedMethod(self.asValue(), Data, zig_func, name);
    }

    pub fn defineSingletonMethod(
        self: Class,
        comptime zig_func: anytype,
        comptime name: [:0]const u8,
    ) void {
        methods.defineSingletonMethod(self.asValue(), zig_func, name);
    }

    pub fn defineMethods(
        self: Class,
        comptime Data: type,
        comptime Methods: type,
    ) void {
        methods.defineMethods(self.asValue(), Data, Methods);
    }

    pub fn definePrivateMethods(
        self: Class,
        comptime Data: type,
        comptime Methods: type,
    ) void {
        methods.definePrivateMethods(self.asValue(), Data, Methods);
    }

    pub fn defineProtectedMethods(
        self: Class,
        comptime Data: type,
        comptime Methods: type,
    ) void {
        methods.defineProtectedMethods(self.asValue(), Data, Methods);
    }

    pub fn defineSingletonMethods(
        self: Class,
        comptime Methods: type,
    ) void {
        methods.defineSingletonMethods(self.asValue(), Methods);
    }
};

pub fn DataType(comptime T: type) type {
    return struct {
        rb_data_type: crb.rb_data_type_t,

        const Self = @This();

        pub fn get() *const Self {
            const Static = struct {
                var instance: Self = undefined;
                var initialized: bool = false;
            };

            if (!Static.initialized) {
                Static.instance = Self.init();
                Static.initialized = true;
            }
            return &Static.instance;
        }

        fn init() Self {
            const mark_func = struct {
                fn mark(zig_self: ?*anyopaque) callconv(.c) void {
                    if (@hasDecl(T, "mark")) {
                        @field(T, "mark")(@as(*T, @ptrCast(@alignCast(zig_self))));
                    }
                }
            }.mark;

            const free_func = struct {
                fn free(zig_self: ?*anyopaque) callconv(.c) void {
                    if (@hasDecl(T, "free")) {
                        const allocator: RubyAllocator = .{};
                        @field(T, "free")(@as(*T, @ptrCast(@alignCast(zig_self))), allocator.allocator());
                    }
                }
            }.free;

            return .{
                .rb_data_type = .{
                    .wrap_struct_name = @typeName(T),
                    .function = .{
                        .dmark = &mark_func,
                        .dfree = &free_func,
                        .dsize = null,
                    },
                    .data = null,
                    .flags = crb.RUBY_TYPED_FREE_IMMEDIATELY,
                },
            };
        }

        pub inline fn unwrap(self: *const Self, rb_value: crb.VALUE) *T {
            return @ptrCast(@alignCast(crb.rb_check_typeddata(rb_value, &self.rb_data_type)));
        }

        pub inline fn wrap(self: *const Self, ptr: *T, rb_class: crb.VALUE) crb.VALUE {
            return crb.rb_data_typed_object_wrap(rb_class, ptr, &self.rb_data_type);
        }

        pub fn markAll(self: Self, data: *T) void {
            _ = self;
            const type_info = @typeInfo(T);
            switch (type_info) {
                .@"struct" => |struct_info| {
                    inline for (struct_info.fields) |field| {
                        if (field.type == Value) {
                            const value = @field(data, field.name);
                            crb.rb_gc_mark(value.asRaw());
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

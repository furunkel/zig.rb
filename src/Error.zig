const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const ids = @import("ids.zig");
const Fixnum = @import("Fixnum.zig");
const String = @import("String.zig");
const Float = @import("Float.zig");
const RbClass = @import("Class.zig");
const Self = @This();
const Registry = @import("Error/Registry.zig");
raw: crb.VALUE,

const protect_mod = @import("Error/protect.zig");
pub const protect = protect_mod.protect;
pub const RubyError = protect_mod.RubyError;
pub const ProtectError = protect_mod.ProtectError;

var zig_error_class: Class = undefined;

var registry: Registry = undefined;

pub fn modInit(allocator: std.mem.Allocator) void {
    defineZigError();
    registry = Registry.init(allocator);
}

pub fn defineZigError() void {
    const rb_class = crb.rb_define_class("ZigError", crb.rb_eStandardError);

    const methods = struct {
        fn @"type"(rb_self: crb.VALUE) callconv(.c) crb.VALUE {
            return crb.rb_ivar_get(rb_self, ids.@"@type");
        }

        fn value(rb_self: crb.VALUE) callconv(.c) crb.VALUE {
            return crb.rb_ivar_get(rb_self, ids.@"@value");
        }
    };

    crb.rb_define_method(rb_class, "type", @ptrCast(&methods.type), 0);
    crb.rb_define_method(rb_class, "value", @ptrCast(&methods.value), 0);

    zig_error_class = .{ .raw = rb_class };
}

pub fn getZigErrorClass() Class {
    return zig_error_class;
}

pub const DefineOptions = struct {
    super: ?Value = null,
    outer: ?Value = null,
};

pub const Class = struct {
    raw: crb.VALUE,

    pub fn asValue(self: Class) Value {
        return Value.fromRaw(self.raw);
    }

    pub fn asClass(self: Class) RbClass {
        return RbClass.fromValue(self.asValue());
    }

    pub fn define(name: [:0]const u8, options: DefineOptions) Class {
        const super = if (options.super) |s| s.asRaw() else crb.rb_eStandardError;

        if (options.outer) |outer| {
            return .{ .raw = crb.rb_define_class_under(outer.asRaw(), name, super) };
        } else {
            return .{ .raw = crb.rb_define_class(name, super) };
        }
    }

    pub fn mapTo(self: Class, err_set: anytype) !void {
        try registry.register(err_set, self);
    }

    pub fn raise(self: Class, message: [:0]const u8) noreturn {
        raiseInternal(self.raw, message);
    }

    pub fn raiseFmt(self: Class, allocator: std.mem.Allocator, comptime fmt: []const u8, args: anytype) !void {
        const msg = try std.fmt.allocPrintSentinel(allocator, fmt, args, 0);
        crb.rb_raise(self.raw, "%s", msg.ptr);
        unreachable;
    }
};

pub fn fromValue(value: Value) Self {
    return .{ .raw = value.asRaw() };
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub fn raise(self: Self) noreturn {
    crb.rb_exc_raise(self.raw);
    unreachable;
}

fn raiseInternal(klass: crb.VALUE, message: [:0]const u8) noreturn {
    crb.rb_raise(klass, message, @as([*c]const u8, null));
}

pub fn checkType(value: Value, expected_type: Value.Type) void {
    crb.Check_Type(value.asRaw(), @intFromEnum(expected_type));
}

pub fn raiseArgumentError(message: [:0]const u8) noreturn {
    raiseInternal(crb.rb_eArgError, message);
}

pub fn raiseTypeError(message: [:0]const u8) noreturn {
    raiseInternal(crb.rb_eTypeError, message);
}

pub fn raiseRuntimeError(message: [:0]const u8) noreturn {
    raiseInternal(crb.rb_eRuntimeError, message);
}

pub fn from(err: anytype) Self {
    const E = @TypeOf(err);
    const type_name = @typeName(E);
    const err_name = @errorName(err);

    // @compileLog("typeName: " ++ type_name);

    const class, const is_fallback = if (E == anyerror)
        .{ zig_error_class, true }
    else blk: {
        const cls = registry.get(E);
        break :blk .{ cls orelse zig_error_class, cls == null };
    };

    //FIXME: error names should not be longer than this, right?
    //Use an allocator?
    var buf: [512:0]u8 = undefined;
    const msg = std.fmt.bufPrintZ(&buf, "{s}", .{err_name}) catch "(error name too long)";

    const exc = crb.rb_exc_new(class.asValue().asRaw(), @ptrCast(msg), @intCast(msg.len));

    if (is_fallback) {
        _ = crb.rb_ivar_set(exc, ids.@"@type", String.newUnprotected(type_name).asValue().asRaw());
        const sym_id = crb.rb_intern2(err_name.ptr, @intCast(err_name.len));
        _ = crb.rb_ivar_set(exc, ids.@"@value", crb.rb_id2sym(sym_id));
    }

    return .{ .raw = exc };
}

pub fn lastException() ?Self {
    const errinfo = crb.rb_errinfo();
    return if (errinfo == crb.Qnil) null else .{ .raw = errinfo };
}

pub fn clearLastException() void {
    crb.rb_set_errinfo(crb.Qnil);
}

const testing = std.testing;

test "lastException: returns null when no exception" {
    clearLastException();
    const exception = lastException();
    try testing.expect(exception == null);
}

test {
    _ = protect_mod;
}

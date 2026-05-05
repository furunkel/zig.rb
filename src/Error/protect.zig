const std = @import("std");
const crb = @import("../crb.zig");
const Value = @import("../Value.zig");
const ids = @import("../ids.zig");
const Fixnum = @import("../Fixnum.zig");
const String = @import("../String.zig");
const Float = @import("../Float.zig");

pub const RubyError = error{
    TypeError,
    ArgumentError,
    RuntimeError,
    FrozenError,
    NameError,
    NoMethodError,
    IndexError,
    KeyError,
    StopIteration,
    RangeError,
    FloatDomainError,
    IOError,
    EOFError,
    EncodingError,
    EncCompatError,
    ZeroDivisionError,
    RegexpError,
    LocalJumpError,
    SystemCallError,
    ThreadError,
    NoMemoryError,
    SystemStackError,
    LoadError,
    NotImplementedError,
    Other,
};

pub const ProtectError = RubyError;

fn classifyException() RubyError {
    const exc = crb.rb_errinfo();
    if (exc == crb.Qnil) return error.Other;
    const klass = crb.rb_class_of(exc);

    // RuntimeError
    if (klass == crb.rb_eFrozenError) return error.FrozenError; // < RuntimeError
    if (klass == crb.rb_eRuntimeError) return error.RuntimeError;

    // NameError
    if (klass == crb.rb_eNoMethodError) return error.NoMethodError; // < NameError
    if (klass == crb.rb_eNameError) return error.NameError;

    // TypeError / ArgumentError
    if (klass == crb.rb_eTypeError) return error.TypeError;
    if (klass == crb.rb_eArgError) return error.ArgumentError;

    // IndexError
    if (klass == crb.rb_eKeyError) return error.KeyError; // < IndexError
    if (klass == crb.rb_eStopIteration) return error.StopIteration; // < IndexError
    if (klass == crb.rb_eIndexError) return error.IndexError;

    // RangeError
    if (klass == crb.rb_eFloatDomainError) return error.FloatDomainError; // < RangeError
    if (klass == crb.rb_eRangeError) return error.RangeError;

    // IOError
    if (klass == crb.rb_eEOFError) return error.EOFError; // < IOError
    if (klass == crb.rb_eIOError) return error.IOError;

    // EncodingError
    if (klass == crb.rb_eEncCompatError) return error.EncCompatError; // < EncodingError
    if (klass == crb.rb_eEncodingError) return error.EncodingError;

    // other StandardError subclasses
    if (klass == crb.rb_eZeroDivError) return error.ZeroDivisionError;
    if (klass == crb.rb_eRegexpError) return error.RegexpError;
    if (klass == crb.rb_eLocalJumpError) return error.LocalJumpError;
    if (klass == crb.rb_eSystemCallError) return error.SystemCallError;
    if (klass == crb.rb_eThreadError) return error.ThreadError;

    // non-StandardError roots
    if (klass == crb.rb_eNoMemError) return error.NoMemoryError;
    if (klass == crb.rb_eSysStackError) return error.SystemStackError;

    // ScriptError subclasses
    if (klass == crb.rb_eNotImpError) return error.NotImplementedError;
    if (klass == crb.rb_eLoadError) return error.LoadError;

    return error.Other;
}

pub fn protect(args: anytype, comptime Ret: type, comptime ProtectedFn: fn (p: *const @TypeOf(args)) Ret) RubyError!Ret {
    const Args = @TypeOf(args);
    comptime {
        if (Ret != void and @sizeOf(Ret) > @sizeOf(crb.VALUE)) {
            @compileError("protect: return type '" ++ @typeName(Ret) ++ "' is larger than crb.VALUE");
        }
    }
    const Wrapper = struct {
        fn call(data: crb.VALUE) callconv(.c) crb.VALUE {
            const p: *const Args = @ptrFromInt(@as(usize, @intCast(data)));
            if (Ret == void) {
                ProtectedFn(p);
                return crb.Qnil;
            } else {
                // memcpy to avoid alignment issues, not sure about this...
                var retbuf: crb.VALUE = 0;
                const retval = ProtectedFn(p);
                const src = std.mem.asBytes(&retval);
                const dst = std.mem.asBytes(&retbuf);
                @memcpy(dst[0..src.len], src);
                return retbuf;
            }
        }
    };

    var args_copy = args;
    var status: c_int = 0;
    const result = crb.rb_protect(Wrapper.call, @as(crb.VALUE, @intFromPtr(&args_copy)), &status);
    if (status != 0) {
        return classifyException();
    }
    if (Ret == void) return;
    return @as(*const Ret, @ptrCast(@alignCast(&result))).*;
}

const testing = std.testing;
const Error = @import("../Error.zig");

test "returns the wrapped function's value" {
    const input = Fixnum.fromComptime(1234).asValue();
    const result = try protect(input, Value, struct {
        fn call(p: *const Value) Value {
            return p.*;
        }
    }.call);
    try testing.expectEqual(@as(c_int, 1234), try result.to(c_int));
}

test "returns the wrapped function's value (u32)" {
    const input: u32 = 1234;
    const result = try protect(input, u32, struct {
        fn call(p: *const u32) u32 {
            return p.*;
        }
    }.call);
    try testing.expectEqual(@as(u32, 1234), result);
}

test "converts Ruby exceptions into RubyError and exposes lastException" {
    Error.clearLastException();

    const protected_call = protect(Value.nil, Value, struct {
        fn call(p: *const Value) Value {
            _ = p;
            Error.raiseRuntimeError("boom");
            unreachable;
        }
    }.call);
    try testing.expectError(RubyError.RuntimeError, protected_call);

    const exception = Error.lastException();
    try testing.expect(exception != null);
    if (exception) |exc| {
        const exc_class = Value.fromRaw(crb.rb_class_of(exc.asValue().asRaw()));
        try testing.expectEqual(crb.rb_eRuntimeError, exc_class.asRaw());
    }
}

test "successful execution returns value" {
    const input = Fixnum.fromComptime(42).asValue();
    const result = try protect(input, Value, struct {
        fn call(p: *const Value) Value {
            return p.*;
        }
    }.call);
    try testing.expectEqual(42, try result.to(c_int));
}

test "catches Ruby exception and returns RubyError" {
    const result = protect(Value.nil, Value, struct {
        fn call(p: *const Value) Value {
            _ = p;
            Error.raiseRuntimeError("test error");
            return Value.nil;
        }
    }.call);
    try testing.expectError(RubyError.RuntimeError, result);
}

test "exception is classified: ArgumentError" {
    _ = protect(Value.nil, Value, struct {
        fn call(p: *const Value) Value {
            _ = p;
            Error.raiseArgumentError("custom error message");
            return Value.nil;
        }
    }.call) catch |err| {
        try testing.expectEqual(RubyError.ArgumentError, err);
        return;
    };
}

test "exception is classified: TypeError" {
    _ = protect(Value.nil, Value, struct {
        fn call(p: *const Value) Value {
            _ = p;
            Error.raiseTypeError("type error");
            return Value.nil;
        }
    }.call) catch |err| {
        try testing.expectEqual(RubyError.TypeError, err);
        return;
    };
}

test "clearLastException clears exception info" {
    _ = protect(Value.nil, Value, struct {
        fn call(p: *const Value) Value {
            _ = p;
            Error.raiseTypeError("type error");
            return Value.nil;
        }
    }.call) catch |err| {
        try testing.expectEqual(RubyError.TypeError, err);
        try testing.expect(Error.lastException() != null);
        Error.clearLastException();
        try testing.expect(Error.lastException() == null);
        return;
    };
}

test "protect: multiple exceptions in sequence" {
    _ = protect(Value.nil, Value, struct {
        fn call(p: *const Value) Value {
            _ = p;
            Error.raiseRuntimeError("first error");
            return Value.nil;
        }
    }.call) catch |err| {
        try testing.expectEqual(RubyError.RuntimeError, err);
    };

    Error.clearLastException();

    _ = protect(Value.nil, Value, struct {
        fn call(p: *const Value) Value {
            _ = p;
            Error.raiseArgumentError("second error");
            return Value.nil;
        }
    }.call) catch |err| {
        try testing.expectEqual(RubyError.ArgumentError, err);
    };
}

test "protect: works with different argument types" {
    const str_input = (try String.new("hello")).asValue();
    const str_result = try protect(str_input, Value, struct {
        fn call(p: *const Value) Value {
            return p.*;
        }
    }.call);
    try testing.expectEqualSlices(u8, "hello", try str_result.toSlice());

    const float_input = Float.fromComptime(3.14).asValue();
    const float_result = try protect(float_input, Value, struct {
        fn call(p: *const Value) Value {
            return p.*;
        }
    }.call);
    try testing.expectEqual(3.14, try float_result.to(f64));
}

test "protect: void return" {
    var count: u32 = 0;
    try protect(&count, void, struct {
        fn call(p: *const *u32) void {
            p.*.* += 1;
        }
    }.call);
    try testing.expectEqual(@as(u32, 1), count);
}

test "protect: multi-arg struct" {
    const allocator = std.testing.allocator;
    const Args = struct { a: Value, b: Value };
    const args = Args{
        .a = Fixnum.fromComptime(10).asValue(),
        .b = Fixnum.fromComptime(32).asValue(),
    };
    const result = try protect(args, Value, struct {
        fn call(p: *const Args) Value {
            const a = p.a.to(c_int) catch unreachable;
            const b = p.b.to(c_int) catch unreachable;
            return Value.allocFrom(allocator, a + b) catch unreachable;
        }
    }.call);
    try testing.expectEqual(42, try result.to(c_int));
}

test "protect: nested protect calls" {
    const allocator = std.testing.allocator;
    const input = Fixnum.fromComptime(21).asValue();
    const result = try protect(input, Value, struct {
        fn call(p: *const Value) Value {
            const doubled = protect(p.*, Value, struct {
                fn call(ip: *const Value) Value {
                    return Value.allocFrom(allocator, (ip.to(c_int) catch unreachable) * 2) catch unreachable;
                }
            }.call) catch return Value.nil;
            return doubled;
        }
    }.call);
    try testing.expectEqual(42, try result.to(c_int));
}

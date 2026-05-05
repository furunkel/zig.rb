const std = @import("std");
const rb = @import("rb");
const crb = rb.crb;
const Value = rb.Value;
const Fixnum = rb.Fixnum;
const Float = rb.Float;
const String = rb.String;
const Integer = rb.Integer;
const TypedDataClass = rb.TypedDataClass;
const typed_data = rb.typed_data;
const Module = rb.Module;
const RubyAllocator = rb.RubyAllocator;
const Error = rb.Error;

const Counter = struct {
    const Self = @This();

    count: Fixnum.Int,
    name: []const u8,

    pub fn alloc(_: Value, allocator: std.mem.Allocator) ?*Self {
        const ptr = allocator.create(Self) catch return null;
        ptr.* = .{ .count = 0, .name = "" };
        return ptr;
    }

    pub fn mark(_: *Self) void {}

    pub fn free(self: *Self, allocator: std.mem.Allocator) void {
        allocator.destroy(self);
    }

    pub const InstanceMethods = struct {
        pub fn increment(self: *Self) Value {
            self.count += 1;
            return Fixnum.fromInt(self.count).asValue();
        }

        pub fn decrement(self: *Self) Value {
            self.count -= 1;
            return Fixnum.fromInt(self.count).asValue();
        }

        pub fn get_count(self: *Self) Value {
            return Fixnum.fromInt(self.count).asValue();
        }

        pub fn set_count(self: *Self, rb_value: Value) Value {
            self.count = rb_value.to(Fixnum.Int) catch 0;
            return Fixnum.fromInt(self.count).asValue();
        }

        pub fn add(self: *Self, rb_amount: Value) Value {
            const amount = rb_amount.to(Fixnum.Int) catch 0;
            self.count += amount;
            return Fixnum.fromInt(self.count).asValue();
        }

        pub fn reset(self: *Self) Value {
            self.count = 0;
            return Fixnum.fromInt(self.count).asValue();
        }
    };

    pub const Constants = struct {
        pub const VERSION = "1.0.0";
        pub const MAX_VALUE = 1000000;
    };
};

const Calculator = struct {
    const Self = @This();

    last_result: f64,

    pub fn alloc(_: Value, allocator: std.mem.Allocator) ?*Self {
        const ptr = allocator.create(Self) catch return null;
        ptr.* = .{ .last_result = 0.0 };
        return ptr;
    }

    pub fn mark(_: *Self) void {}

    pub fn free(self: *Self, allocator: std.mem.Allocator) void {
        allocator.destroy(self);
    }

    pub const InstanceMethods = struct {
        pub fn add(self: *Self, rb_a: Value, rb_b: Value) Value {
            const a = rb_a.to(f64) catch 0.0;
            const b = rb_b.to(f64) catch 0.0;
            self.last_result = a + b;
            return Float.from(self.last_result).asValue();
        }

        pub fn subtract(self: *Self, rb_a: Value, rb_b: Value) Value {
            const a = rb_a.to(f64) catch 0.0;
            const b = rb_b.to(f64) catch 0.0;
            self.last_result = a - b;
            return Float.from(self.last_result).asValue();
        }

        pub fn multiply(self: *Self, rb_a: Value, rb_b: Value) Value {
            const a = rb_a.to(f64) catch 0.0;
            const b = rb_b.to(f64) catch 0.0;
            self.last_result = a * b;
            return Float.from(self.last_result).asValue();
        }

        pub fn divide(self: *Self, rb_a: Value, rb_b: Value) Value {
            const a = rb_a.to(f64) catch 0.0;
            const b = rb_b.to(f64) catch 0.0;
            if (b == 0.0) {
                return Value.nil;
            }
            self.last_result = a / b;
            return Float.from(self.last_result).asValue();
        }

        pub fn last_result(self: *Self) Value {
            return Float.from(self.last_result).asValue();
        }
    };

    pub const SingletonMethods = struct {
        pub fn pi(_: Value) Value {
            return Float.from(std.math.pi).asValue();
        }

        pub fn e(_: Value) Value {
            return Float.from(std.math.e).asValue();
        }
    };
};

const StringProcessor = struct {
    const Self = @This();

    prefix: []const u8,

    pub fn alloc(_: Value, allocator: std.mem.Allocator) ?*Self {
        const ptr = allocator.create(Self) catch return null;
        ptr.* = .{ .prefix = "" };
        return ptr;
    }

    pub fn mark(_: *Self) void {}

    pub fn free(self: *Self, allocator: std.mem.Allocator) void {
        allocator.destroy(self);
    }

    pub const InstanceMethods = struct {
        pub fn reverse(_: *Self, rb_str: Value) Value {
            const str = (rb_str.asString() catch return Value.nil).toSlice();

            const allocator: RubyAllocator = .{};
            const reversed = allocator.allocator().alloc(u8, str.len) catch return Value.nil;
            defer allocator.allocator().free(reversed);

            var i: usize = 0;
            while (i < str.len) : (i += 1) {
                reversed[i] = str[str.len - 1 - i];
            }

            return String.from(reversed).asValue();
        }

        pub fn upcase(_: *Self, rb_str: Value) Value {
            const str = (rb_str.asString() catch return Value.nil).toSlice();

            const allocator: RubyAllocator = .{};
            const upper = allocator.allocator().alloc(u8, str.len) catch return Value.nil;
            defer allocator.allocator().free(upper);

            for (str, 0..) |c, i| {
                upper[i] = std.ascii.toUpper(c);
            }

            return String.from(upper).asValue();
        }

        pub fn downcase(_: *Self, rb_str: Value) Value {
            const str = (rb_str.asString() catch return Value.nil).toSlice();

            const allocator: RubyAllocator = .{};
            const lower = allocator.allocator().alloc(u8, str.len) catch return Value.nil;
            defer allocator.allocator().free(lower);

            for (str, 0..) |c, i| {
                lower[i] = std.ascii.toLower(c);
            }

            return String.from(lower).asValue();
        }

        pub fn length(_: *Self, rb_str: Value) Value {
            const str = (rb_str.asString() catch return Fixnum.fromInt(@as(Fixnum.Int, 0)).asValue()).toSlice();
            return Fixnum.fromInt(@as(Fixnum.Int, @intCast(str.len))).asValue();
        }
    };
};

const TypeTester = struct {
    const Self = @This();

    dummy: u8,

    pub fn alloc(_: Value, allocator: std.mem.Allocator) ?*Self {
        const ptr = allocator.create(Self) catch return null;
        ptr.* = .{ .dummy = 0 };
        return ptr;
    }

    pub fn mark(_: *Self) void {}

    pub fn free(self: *Self, allocator: std.mem.Allocator) void {
        allocator.destroy(self);
    }

    pub const InstanceMethods = struct {
        pub fn echo_int(_: *Self, rb_val: Value) Value {
            const num = rb_val.to(Fixnum.Int) catch return Value.nil;
            return Fixnum.fromInt(num).asValue();
        }

        pub fn echo_float(_: *Self, rb_val: Value) Value {
            const num = rb_val.to(f64) catch return Value.nil;
            return Float.from(num).asValue();
        }

        pub fn echo_string(_: *Self, rb_val: Value) Value {
            const str = (rb_val.asString() catch return Value.nil).toSlice();
            return String.from(str).asValue();
        }

        pub fn echo_bool(_: *Self, rb_val: Value) Value {
            const b = rb_val.to(bool) catch false;
            return Value.fromBool(b);
        }

        pub fn is_nil(_: *Self, rb_val: Value) Value {
            return Value.fromBool(rb_val.isNil());
        }

        pub fn get_type(_: *Self, rb_val: Value) Value {
            const type_name = switch (rb_val.getType()) {
                .nil => "nil",
                .true => "true",
                .false => "false",
                .fixnum => "fixnum",
                .float => "float",
                .string => "string",
                .array => "array",
                .hash => "hash",
                .symbol => "symbol",
                .object => "object",
                else => "unknown",
            };
            return String.from(type_name).asValue();
        }
    };
};

const ErrorTester = struct {
    const Self = @This();

    dummy: u8,

    pub fn alloc(_: Value, allocator: std.mem.Allocator) ?*Self {
        const ptr = allocator.create(Self) catch return null;
        ptr.* = .{ .dummy = 0 };
        return ptr;
    }

    pub fn mark(_: *Self) void {}

    pub fn free(self: *Self, allocator: std.mem.Allocator) void {
        allocator.destroy(self);
    }

    const TestError = error{
        InvalidInput,
        OutOfRange,
        NotFound,
    };

    const UnregisteredError = error{
        SomeError,
    };

    var test_error_class: Error.Class = undefined;

    pub fn classInit(_: typed_data.Class) void {
        test_error_class = Error.Class.define("TestError", .{});
        test_error_class.mapTo(TestError) catch |err| {
            std.log.err("mapping error failed: {s}", .{@errorName(err)});
        };
    }

    pub const InstanceMethods = struct {
        pub fn may_fail(_: *Self, rb_val: Value) TestError!Value {
            const num = rb_val.to(Fixnum.Int) catch return Value.nil;
            if (num < 0) {
                return TestError.InvalidInput;
            }
            if (num > 100) {
                return TestError.OutOfRange;
            }
            return (try Integer.from(num * 2)).asValue();
        }

        pub fn always_succeeds(_: *Self, rb_val: Value) TestError!Value {
            const num = rb_val.to(Fixnum.Int) catch return (try Integer.from(@as(Fixnum.Int, 0))).asValue();
            return (try Integer.from(num + 1)).asValue();
        }

        pub fn always_fails(_: *Self, _: Value) TestError!Value {
            return TestError.NotFound;
        }

        pub fn fails_with_anyerror(self: *Self, _: Value) !Value {
            // Make sure compiler cannot infer dead branch
            if (@intFromPtr(self) % 2 == 0) {
                return error.Unknown;
            }
            return TestError.InvalidInput;
        }

        pub fn fails_with_unregistered(_: *Self, _: Value) UnregisteredError!Value {
            return UnregisteredError.SomeError;
        }

        pub fn explicit_raise(_: *Self, rb_val: Value) Value {
            const num = rb_val.to(Fixnum.Int) catch 0;
            const allocator = RubyAllocator.default().allocator();
            if (num < 0) {
                test_error_class.raiseFmt(allocator, "Value must be non-negative, got {d}", .{num}) catch unreachable;
            }
            return (try Integer.from(num)).asValue();
        }
    };
};

const ZigRbTest = struct {
    pub const Functions = struct {
        pub fn add(_: Value, rb_a: Value, rb_b: Value) Value {
            const a = rb_a.to(Fixnum.Int) catch 0;
            const b = rb_b.to(Fixnum.Int) catch 0;
            return Fixnum.fromInt(a + b).asValue();
        }

        pub fn multiply(_: Value, rb_a: Value, rb_b: Value) Value {
            const a = rb_a.to(Fixnum.Int) catch 0;
            const b = rb_b.to(Fixnum.Int) catch 0;
            return Fixnum.fromInt(a * b).asValue();
        }

        pub fn is_even(_: Value, rb_num: Value) Value {
            const num = rb_num.to(Fixnum.Int) catch 0;
            return Value.fromBool(@mod(num, 2) == 0);
        }

        pub fn factorial(_: Value, rb_n: Value) Value {
            const n = rb_n.to(Fixnum.Int) catch return Value.nil;

            if (n < 0) {
                Error.raiseArgumentError("n must be >= 0");
            }

            var result: Fixnum.Int = 1;
            var i: Fixnum.Int = 2;
            while (i <= n) : (i += 1) {
                result *= i;
            }

            return (try Integer.from(result)).asValue();
        }

        pub fn greet(_: Value, rb_name: Value) Value {
            const name = (rb_name.asString() catch return Value.nil).toSlice();

            const allocator: RubyAllocator = .{};
            const greeting = std.fmt.allocPrint(allocator.allocator(), "Hello, {s}!", .{name}) catch return Value.nil;
            defer allocator.allocator().free(greeting);

            return String.from(greeting).asValue();
        }

        pub fn array_sum(_: Value, rb_array: Value) Value {
            const len = crb.RARRAY_LEN(rb_array.raw);
            var sum: Fixnum.Int = 0;

            var i: c_long = 0;
            while (i < len) : (i += 1) {
                const elem = crb.rb_ary_entry(rb_array.raw, i);
                const val = Value.fromRaw(elem).to(Fixnum.Int) catch 0;
                sum += val;
            }

            return (try Integer.from(sum)).asValue();
        }

        pub fn reverse_string(_: Value, rb_str: Value) Value {
            const str = (rb_str.asString() catch return Value.nil).toSlice();

            const allocator: RubyAllocator = .{};
            const reversed = allocator.allocator().alloc(u8, str.len) catch return Value.nil;
            defer allocator.allocator().free(reversed);

            var i: usize = 0;
            while (i < str.len) : (i += 1) {
                reversed[i] = str[str.len - 1 - i];
            }

            return String.from(reversed).asValue();
        }

        pub fn hash_merge_simple(_: Value, rb_hash1: Value, rb_hash2: Value) Value {
            const result = crb.rb_hash_new();
            _ = crb.rb_funcall(result, crb.rb_intern("merge!"), 1, rb_hash1.raw);
            _ = crb.rb_funcall(result, crb.rb_intern("merge!"), 1, rb_hash2.raw);
            return Value.fromRaw(result);
        }
    };

    pub const Constants = struct {
        pub const VERSION = "0.1.0";
    };
};

export fn Init_libzig_rb_test() void {
    std.log.info("Loaded", .{});

    rb.init();
    var gpa = std.heap.DebugAllocator(.{}){};
    const allocator = gpa.allocator();

    _ = typed_data.Class.define(
        allocator,
        Counter,
        .{},
    );
    _ = typed_data.Class.define(
        allocator,
        Calculator,
        .{},
    );
    _ = typed_data.Class.define(allocator, StringProcessor, .{});
    _ = typed_data.Class.define(allocator, TypeTester, .{});
    _ = typed_data.Class.define(allocator, ErrorTester, .{});

    const zig_rb_test = Module.define("ZigRbTest", .{});
    zig_rb_test.defineFunctions(ZigRbTest.Functions);
    zig_rb_test.defineConstants(allocator, ZigRbTest.Constants);

    const outer_mod = Module.define("OuterMod", .{ .outer = zig_rb_test });
    _ = Module.define("InnerMod", .{ .outer = outer_mod });
}

# zig.rb

Type-safe and exception-safe Ruby native extensions written in Zig.

## Overview

`zig.rb` provides a high-level API for creating Ruby extensions in Zig. In particular, `zig.rb` strives to protect all Ruby calls to avoid memory leaks after Ruby exceptions. This is in line with Zig's "no hidden control flow" philosophy (more below).

## Features

- **Type-safe Value conversions** - Compile-time checked conversions between Ruby and Zig types
- **Exception safety** - All Ruby calls are protected to prevent memory leaks after Ruby exceptions
- **Allocator** - RubyAllocator provides a Zig allocator interface
- **Class and module definitions** - Define Ruby classes with Zig structs
- **Method binding** - Automatic Ruby method wrappers with arity checking
- **Full Ruby type support** - Fixnum, Integer, Bignum, Float, String, Array, Hash, Symbol
- **Format support** - Direct integration with Zig's `std.fmt` for Ruby values
- **Error handling** - Type-safe error propagation between Ruby and Zig, custom errors

> **Note:** The complete Ruby C API remains available via the raw bindings exposed under `rb.crb.*`.

## Requirements

- Zig 0.16.0 or later
- Ruby 2.6 or later

## Installation

Add `zig.rb` to your `build.zig.zon`:

```zig
.dependencies = .{
    .zig_rb = .{
        .url = "https://github.com/furunkel/zig.rb/archive/main.tar.gz",
        .hash = "...",
    },
},
```

## Quick Start

### Basic Extension

```zig
const rb = @import("zig_rb");
const Value = rb.Value;
const Module = rb.Module;

fn add(self: Value, a: Value, b: Value) Value {
    _ = self;
    const a_int = a.to(i64) catch 0;
    const b_int = b.to(i64) catch 0;
    return Value.from(a_int + b_int);
}

export fn Init_myextension() void {
    rb.init();
    const mod = Module.define("MyExtension", .{});
    mod.defineFunction(add, "add");
}
```

### Build Configuration

```zig
const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Import zig_rb as a dependency
    const zig_rb_dep = b.dependency("zig_rb", .{
        .target = target,
        .optimize = optimize,
    });
    const zig_rb_module = zig_rb_dep.module("zig_rb");

    // Create your extension module
    const my_module = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
        .imports = &.{
            .{ .name = "rb", .module = zig_rb_module },
        },
    });

    const ruby = @import("zig_rb").ruby;
    const ruby_config = ruby.getConfig(b) catch return;

    const ext = ruby.addExtension(b, &ruby_config, .{
        .name = "myextension",
        .root_module = my_module,
    });

    ruby.installExtensionToLib(b, &ruby_config, ext, "myextension") catch {
        b.installArtifact(ext);
    };
}
```

### Defining Ruby Classes

```zig
const rb = @import("rb");
const std = @import("std");
const Value = rb.Value;
const typed_data = rb.typed_data;

const Counter = struct {
    const Self = @This();
    count: i64,

    pub fn alloc(_: Value, allocator: std.mem.Allocator) ?*Self {
        const ptr = allocator.create(Self) catch return null;
        ptr.* = .{ .count = 0 };
        return ptr;
    }

    pub fn mark(_: *Self) void {}

    pub fn free(self: *Self, allocator: std.mem.Allocator) void {
        allocator.destroy(self);
    }

    pub const InstanceMethods = struct {
        pub fn increment(self: *Self) Value {
            self.count += 1;
            return Value.from(self.count);
        }

        pub fn get_count(self: *Self) Value {
            return Value.from(self.count);
        }
    };

    pub const Constants = struct {
        pub const VERSION = "1.0.0";
        pub const MAX_VALUE = 1000000;
    };
};

export fn Init_counter() void {
    rb.init();
    const ruby_allocator = rb.RubyAllocator.default();
    const counter_cls = typed_data.Class.define(ruby_allocator.allocator(), Counter, .{});
    _ = counter_cls;
}
```

Ruby usage:

```ruby
counter = Counter.new
counter.increment  # => 1
counter.increment  # => 2
counter.get_count  # => 2
Counter::VERSION   # => "1.0.0"
```

## Type Conversions

### Ruby to Zig

Ruby is dynamically typed; that is, there is a generic value type. To map this to Zig, we have a generic `Value` type
that can be converted to concrete types (`String`, `Symbol`, etc.). This way we need to pay the cost of a type check only once (at conversion). Type-specific functionality is only exposed via concrete value types.

#### Value to Concrete Type

This converts a generic Ruby value to a concrete type (e.g., a number, string, etc.).
This conversion is checked and returns an error on failure.

```zig
const fixnum = value.asFixnum() catch return error.TypeError;
const bignum = value.asBignum() catch return error.TypeError;
const integer = value.asInteger() catch return error.TypeError;
const string = value.asString() catch return error.TypeError;
const float = value.asFloat() catch return error.TypeError;
const symbol = value.asSymbol() catch return error.TypeError;
```

#### Generic Scalar Conversion

For quick conversions of values to Zig primitives use `.to(ZigType)`.

```zig
// Generic scalar conversion from already-compatible Ruby values.
const small_int = value.to(i64) catch return error.TypeError;
const f = value.to(f64) catch return error.TypeError;
const b = value.to(bool) catch return error.TypeError;
const bytes = value.to([]const u8) catch return error.TypeError;
```

#### Ruby-level Conversions

`toI()`, `toF()`, `toFlt()`, etc. map to Ruby's `to_i`, `to_f`, etc. They are protected and may return an error.

```zig
const ruby_integer = value.toI() catch return error.TypeError;
const checked_float = value.toFlt() catch return error.TypeError;
const ruby_float = value.toF() catch return error.TypeError;
const checked_str = value.toStr() catch return error.TypeError;
const display_str = value.toS() catch return error.TypeError;
const checked_array = value.toAry() catch return error.TypeError;
const ruby_array = value.toA() catch return error.TypeError;
```

#### Type Checks

```zig
if (value.isNil()) {}
const type_tag = value.getType();
```

### Zig to Ruby

```zig
const v1 = Value.from(42);           // Fixnum
const v2 = Value.from(3.14);         // Float
const v3 = Value.from(true);         // TrueClass
const v4 = Value.from("hello");      // String
```

In some cases, an allocator is needed (e.g., arrays, bignums)

```zig
const ruby_allocator = rb.RubyAllocator.default();
const allocator = ruby_allocator.allocator();
const big = try Value.allocFrom(allocator, @as(i200, 1) << 100);
const array = try Value.allocFrom(allocator, &[_]i64{ 1, 2, 3 });
```

Common constants:
```zig
const nil_val = Value.nil;
const true_val = Value.@"true";
const false_val = Value.@"false";
```

### Value and Typed Wrappers

## Working with Collections

### Arrays

```zig
const rb = @import("zig_rb");
const Value = rb.Value;

fn array_sum(self: Value, rb_array: Value) !Value {
    _ = self;
    const array = try rb_array.toAry();
    var sum: i64 = 0;
    var iter = array.iterator();
    while (iter.next()) |elem| {
        sum += elem.to(i64) catch 0;
    }
    return Value.from(sum);
}
```

## Format Support

Ruby values integrate with Zig's `std.fmt`:

```zig
const value = Value.from(42);
std.debug.print("Value: {}\n", .{value}); // Calls Ruby's inspect
```

## Protection

Ruby exceptions use `longjmp` and are a common root cause of memory leaks in native extensions. To avoid this (and align with the Zig philosophy of "no hidden control flow"), all code interfacing with potentially raising Ruby code paths is protected. This means that Ruby exceptions are caught, converted into a Zig error, and returned.

There are unprotected variants (e.g., `String.newUnprotected()`, `Array.pushUnprotected()`, `Value.toIUnprotected()`) for cases where you absolutely don't want protection.

## Error Handling

### Raising Standard Ruby Errors

```zig
const Error = rb.Error;

fn divide(self: Value, a: Value, b: Value) Value {
    _ = self;
    const a_int = a.to(i64) catch {
        Error.raiseTypeError("first argument must be an integer");
    };
    const b_int = b.to(i64) catch {
        Error.raiseTypeError("second argument must be an integer");
    };

    if (b_int == 0) {
        Error.raiseArgumentError("division by zero");
    }

    return Value.from(@divTrunc(a_int, b_int));
}
```

### Custom Error Classes

Define custom Ruby exception classes and map Zig error types:

```zig
const MyError = error{ InvalidInput, OutOfRange };

// In your init function:
const my_error = Error.Class.define("MyError", .{});  // Inherits from StandardError
try my_error.mapTo(MyError);                          // Map Zig error type to Ruby class
```

Methods can return error unions. Mapped errors raise the corresponding Ruby class:

```zig
pub fn validate(_: *Self, rb_val: Value) MyError!Value {
    const num = rb_val.to(i64) catch return Value.nil;
    if (num < 0) return MyError.InvalidInput;
    if (num > 100) return MyError.OutOfRange;
    return Value.from(num);
}
```

Ruby usage:

```ruby
begin
  obj.validate(-1)
rescue MyError => e
  puts e.message  # "InvalidInput"
end
```

### Explicit Error Raising

Use `raiseFmt` with format strings for custom messages:

```zig
const ruby_allocator = rb.RubyAllocator.default();
try my_error.raiseFmt(ruby_allocator.allocator(), "Invalid value: {d}", .{num});
```

### Unregistered Errors and ZigError

Unregistered error types or `!Value` (anyerror) fall back to `ZigError`. The exception provides metadata:

```ruby
begin
  obj.some_method
rescue ZigError => e
  puts e.message  # Error name, e.g., "SomeError"
  puts e.type     # Zig type name, e.g., "error{SomeError}"
  puts e.value    # Error as symbol, e.g., :SomeError
end
```

## Build Utilities

The `ruby` module in `build/ruby.zig` provides build integration:

```zig
const ruby = @import("zig_rb").ruby;

// Get Ruby configuration (libdir, headers, version, arch)
const ruby_config = try ruby.getConfig(b);

// Configure a compilation unit with Ruby include paths
ruby.configureCompile(compile, &ruby_config);

// Create a Ruby extension shared library
const ext = ruby.addExtension(b, &ruby_config, .{
    .name = "myextension",
    .root_module = my_module,
    .version = null,  // optional semantic version
});

// Install extension to lib/gem_name/ruby_version/ for gem packaging
try ruby.installExtensionToLib(b, &ruby_config, ext, "gem_name");
```

Environment variables for configuration override:
- `RUBY_LIBDIR`
- `RUBY_HDRDIR`
- `RUBY_ARCHHDRDIR`
- `RUBY_API_VERSION`
- `RUBY_ARCH`

## API Reference

### Core Types

- **`Value`** - Wrapper for Ruby VALUE with type-safe conversions
- **`typed_data.Class`** - Define Ruby classes backed by Zig structs
- **`Class`** - Define and work with Ruby classes
- **`Module`** - Define Ruby modules and singleton methods
- **`Array`** - Ruby Array operations
- **`Hash`** - Ruby Hash operations
- **`Error`** / **`Error.Class`** - Raise Ruby exceptions
- **`RubyAllocator`** - std.mem.Allocator that uses Ruby's memory allocation

### Integer Types

- **`Fixnum`** - Small integers (machine word size)
- **`Bignum`** - Arbitrary precision integers
- **`Integer`** - Union type representing either Fixnum or Bignum

## Examples

See the [`example/`](example/) directory for a complete gem project demonstrating:

- Standard Ruby gem structure
- Build system integration with `b.dependency()`
- Extension compilation
- Testing with minitest
- Gem packaging

## License

MIT

## Contributing

Contributions welcome. Please ensure all tests pass before submitting PRs.

```bash
zig build test
```

## TODO

- Conversion helpers between Zig maps and Ruby Hash values

# Example Ruby Extension

This is a minimal example demonstrating how to use `zig.rb` as a dependency to create Ruby extensions written in Zig, following standard Ruby gem conventions.

## What This Example Shows

1. **Dependency Management**: Uses `zig.rb` as a path dependency in `build.zig.zon`
2. **Build Integration**: Uses the `addRubyExtension` function from `zig.rb`
3. **Simple Extension**: Implements a single module function `Example.add(a, b)` that adds two integers
4. **Standard Gem Structure**: Follows Ruby gem conventions with proper directory layout
5. **Proper Extension Paths**: Automatically installs compiled extension to `lib/example/ruby_version/` using Ruby's API version (e.g., `3.3.0`)

## Building

From the example directory:

```bash
zig build
```

This will:
1. Fetch the `zig_rb` dependency from the parent directory
2. Build the extension with Ruby C API configuration
3. Output `example.so` to `lib/example/ruby_version/` (e.g., `lib/example/3.3.0/`)

The build system automatically determines the Ruby API version from `RbConfig::CONFIG['ruby_version']` and installs the extension to the appropriate path following gem conventions.

## Testing

Run the test script:

```bash
ruby test/test_example.rb
```

Or use Rake:

```bash
rake test
```

## Packaging as a Gem

This example can be packaged and distributed as a RubyGem with the pre-compiled extension:

```bash
# Build the extension
zig build

# Build the gem (includes the compiled .so file)
gem build example.gemspec

# Install locally to test
gem install ./example-0.1.0.gem

# Test the installed gem
ruby -e "require 'example'; puts Example.add(10, 20)"
```

**Important**: The gem ships with the pre-compiled `.so` file, not the source code. Users don't need Zig installed to use the gem. In the future, when `build.zig.zon` supports git references, the dependency will be properly resolved during development.

Or use the extension in your own Ruby code:

```ruby
require_relative 'lib/example'

result = Example.add(10, 20)
puts result  # => 30
```

## Code Overview

The extension defines a single module `Example` with one function `add`:

```zig
fn add(self: Value, a: Value, b: Value) Value {
    _ = self;
    const a_int = a.toInt(i64) catch 0;
    const b_int = b.toInt(i64) catch 0;
    const sum = a_int + b_int;
    return Value.from(sum);
}
```

The function:
- Takes two Ruby `Value` arguments (first argument is unused self)
- Converts them to Zig integers
- Adds them together
- Returns the result as a Ruby `Value`

## Key Points

- The extension name in `Init_example()` must match the `.so` filename
- The `addRubyExtension` function handles all Ruby C API configuration
- The `zig.rb` library provides type-safe wrappers (`Value`, `Module`) for Ruby integration

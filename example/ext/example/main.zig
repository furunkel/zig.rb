const rb = @import("rb");
const Value = rb.Value;
const Module = rb.Module;

// Ruby extension initialization function
// Ruby expects Init_<extension_name> where extension_name matches the .so filename
export fn Init_example() void {
    rb.init();
    // Define a module called "Example"
    const example_module = Module.define("Example", .{});

    // Define the add function on the Example module
    example_module.defineFunction(add, "add");
}

// Implementation of the add function
// Takes two Ruby integers and returns their sum
fn add(self: Value, a: Value, b: Value) Value {
    // Convert Ruby values to Zig integers, add them, and convert back
    _ = self;
    const a_int = a.toInt(i64) catch 0;
    const b_int = b.toInt(i64) catch 0;
    const sum = a_int + b_int;
    return Value.from(sum);
}

const std = @import("std");
pub const ruby = @import("build/ruby.zig");

// Although this function looks imperative, it does not perform the build
// directly and instead it mutates the build graph (`b`) that will be then
// executed by an external runner. The functions in `std.Build` implement a DSL
// for defining build steps and express dependencies between them, allowing the
// build runner to parallelize the build automatically (and the cache system to
// know when a step doesn't need to be re-run).
pub fn build(b: *std.Build) void {
    // Standard target options allow the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});
    // Standard optimization options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall. Here we do not
    // set a preferred release mode, allowing the user to decide how to optimize.
    const optimize = b.standardOptimizeOption(.{});

    const ruby_config = ruby.getConfig(b) catch |err| {
        std.debug.print("Failed to get Ruby config: {}\n", .{err});
        return;
    };

    // It's also possible to define more custom flags to toggle optional features
    // of this build script using `b.option()`. All defined flags (including
    // target and optimize options) will be listed when running `zig build --help`
    // in this directory.

    // This creates a module, which represents a collection of source files alongside
    // some compilation options, such as optimization mode and linked system libraries.
    // Zig modules are the preferred way of making Zig code available to consumers.
    // addModule defines a module that we intend to make available for importing
    // to our consumers. We must give it a name because a Zig package can expose
    // multiple modules and consumers will need to be able to specify which
    // module they want to access.
    const mod = b.addModule("zig_rb", .{
        // The root source file is the "entry point" of this module. Users of
        // this module will only be able to access public declarations contained
        // in this file, which means that if you have declarations that you
        // intend to expose to consumers that were defined in other files part
        // of this module, you will have to make sure to re-export them from
        // the root file.
        .root_source_file = b.path("src/root.zig"),
        // Later on we'll use this module as the root module of a test executable
        // which requires us to specify a target.
        .target = target,
        .optimize = optimize,
    });

    const zig_tests = b.addTest(.{
        .root_module = mod,
        .test_runner = .{ .path = b.path("src/test_runner.zig"), .mode = .simple },
    });
    ruby.configureCompile(zig_tests, &ruby_config);
    zig_tests.root_module.linkSystemLibrary("ruby", .{});

    const run_zig_tests = b.addRunArtifact(zig_tests);

    // Create a separate module for the test extension
    const test_ext_mod = b.createModule(.{
        .root_source_file = b.path("test/test_ext.zig"),
        .target = target,
        .optimize = optimize,
        .imports = &.{
            .{ .name = "rb", .module = mod },
        },
    });

    const ruby_test_ext = ruby.addExtension(
        b,
        &ruby_config,
        .{
            .name = "zig_rb_test",
            .root_module = test_ext_mod,
            .version = null,
        },
    );

    // Install the test extension
    b.installArtifact(ruby_test_ext);

    const ruby_ext_path = ruby_test_ext.getEmittedBin();

    const ruby_tests = b.addSystemCommand(&.{ "ruby", "test/run_minitest.rb" });
    ruby_tests.setName("ruby-tests");
    ruby_tests.addFileArg(ruby_ext_path);

    // Make ruby tests depend on building the extension
    ruby_tests.step.dependOn(&ruby_test_ext.step);

    const test_step = b.step("test", "Run Zig + Ruby extension tests");
    test_step.dependOn(&run_zig_tests.step);
    test_step.dependOn(&ruby_tests.step);
}

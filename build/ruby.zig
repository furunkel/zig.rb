const std = @import("std");

const Child = std.process.Child;

fn getEnvOwned(allocator: std.mem.Allocator, name: []const u8) !?[]u8 {
    const name_z = try allocator.dupeZ(u8, name);
    const value_z = std.posix.getenv(name_z) orelse return null;
    return try allocator.dupe(u8, value_z);
}

fn runRuby(allocator: std.mem.Allocator, code: []const u8) ![]u8 {
    const argv = [_][]const u8{ "ruby", "-e", code };
    const result = try Child.run(.{ .allocator = allocator, .argv = &argv });
    return result.stdout;
}

pub const RubyConfig = struct {
    libdir: []const u8,
    hdrdir: []const u8,
    archhdrdir: []const u8,
    ruby_version: []const u8, // API version (e.g., "3.3.0") - used for gem paths
    arch: []const u8, // Architecture (e.g., "x86_64-linux")
};

pub fn getConfig(b: *std.Build) !RubyConfig {
    var ruby_libdir: ?[]const u8 = try getEnvOwned(b.allocator,
        "RUBY_LIBDIR");
    var ruby_hdrdir: ?[]const u8 = try getEnvOwned(b.allocator,
        "RUBY_HDRDIR");
    var ruby_archhdrdir: ?[]const u8 = try getEnvOwned(b.allocator,
        "RUBY_ARCHHDRDIR");
    var ruby_version: ?[]const u8 = try getEnvOwned(b.allocator,
        "RUBY_API_VERSION");
    var ruby_arch: ?[]const u8 = try getEnvOwned(b.allocator,
        "RUBY_ARCH");

    if (ruby_libdir == null or ruby_hdrdir == null or ruby_archhdrdir == null or ruby_version == null or ruby_arch == null) {
        const ruby_config_str: []u8 = try runRuby(
            b.allocator,
            "$stdout.write RbConfig::CONFIG.values_at('libdir', 'rubyhdrdir', 'rubyarchhdrdir', 'ruby_version', 'arch').join(':');",
        );
        var iter = std.mem.splitScalar(u8, ruby_config_str, ':');
        ruby_libdir = ruby_libdir orelse iter.first();
        ruby_hdrdir = ruby_hdrdir orelse iter.next();
        ruby_archhdrdir = ruby_archhdrdir orelse iter.next();
        ruby_version = ruby_version orelse iter.next();
        ruby_arch = ruby_arch orelse iter.next();
    }

    return RubyConfig{
        .libdir = ruby_libdir.?,
        .hdrdir = ruby_hdrdir.?,
        .archhdrdir = ruby_archhdrdir.?,
        .ruby_version = std.mem.trim(u8, ruby_version.?, &std.ascii.whitespace),
        .arch = std.mem.trim(u8, ruby_arch.?, &std.ascii.whitespace),
    };
}

pub fn configureCompile(compile: *std.Build.Step.Compile, config: *const RubyConfig) void {
    compile.root_module.link_libc = true;
    compile.root_module.addLibraryPath(.{ .cwd_relative = config.libdir });
    compile.root_module.addSystemIncludePath(.{ .cwd_relative =
        config.hdrdir });
    compile.root_module.addSystemIncludePath(.{ .cwd_relative =
        config.archhdrdir });
}

pub const RubyExtensionOptions = struct {
    name: []const u8,
    root_module: *std.Build.Module,
    version: ?std.SemanticVersion = null,
};

pub fn addExtension(b: *std.Build, config: *const RubyConfig, options: RubyExtensionOptions) *std.Build.Step.Compile {
    const lib = b.addLibrary(.{
        .linkage = .dynamic,
        .name = options.name,
        .root_module = options.root_module,
        .version = options.version,
    });

    lib.out_filename = b.fmt("{s}.so", .{options.name});

    configureCompile(lib, config);

    return lib;
}

pub fn installExtensionToLib(
    b: *std.Build,
    config: *const RubyConfig,
    artifact: *std.Build.Step.Compile,
    gem_name: []const u8,
) !void {
    const allocator = b.allocator;

    // Build destination path in project root using ruby_version (API version)
    const dest_path = try std.fmt.allocPrint(
        allocator,
        "lib/{s}/{s}",
        .{ gem_name, config.ruby_version },
    );

    const dest_file = try std.fmt.allocPrint(
        allocator,
        "{s}/{s}.so",
        .{ dest_path, gem_name },
    );

    // Create a run step to copy the file after build
    const copy_cmd = b.addSystemCommand(&.{
        "sh",
        "-c",
        try std.fmt.allocPrint(
            allocator,
            "mkdir -p {s} && cp $1 {s}",
            .{ dest_path, dest_file },
        ),
        "--",
    });
    copy_cmd.addFileArg(artifact.getEmittedBin());
    copy_cmd.step.dependOn(&artifact.step);

    b.getInstallStep().dependOn(&copy_cmd.step);
}

const std = @import("std");
const crb = @import("crb.zig");
const Value = @import("Value.zig");
const Array = @import("Array.zig");
const ids = @import("ids.zig");
const RbClass = @import("Class.zig");
const Fixnum = @import("Fixnum.zig");
const String = @import("String.zig");
const Error = @import("Error.zig");
const RubyError = Error.RubyError;
const Self = @This();

raw: crb.VALUE,

pub fn fromValue(value: Value) Self {
    return .{ .raw = value.asRaw() };
}

pub fn asValue(self: Self) Value {
    return Value.fromRaw(self.raw);
}

pub fn size(self: Self) usize {
    return @intCast(crb.RSTRUCT_LEN(self.raw));
}

pub fn get(self: Self, index: c_int) Value {
    return Value.fromRaw(crb.RSTRUCT_GET(self.raw, index));
}

pub fn getMemberUnprotected(self: Self, key: Value) Value {
    return Value.fromRaw(crb.rb_struct_getmember(self.raw, crb.rb_sym2id(key.raw)));
}

pub fn getMember(self: Self, key: Value) RubyError!Value {
    const Args = struct { self: Self, key: Value };
    const args = Args{ .self = self, .key = key };
    return Error.protect(args, Value, struct {
        pub fn call(p: *const Args) Value {
            return p.self.getMemberUnprotected(p.key);
        }
    }.call);
}

pub fn getMemberByNameUnprotected(self: Self, name: [*:0]const u8) Value {
    return Value.fromRaw(crb.rb_struct_getmember(self.raw, crb.rb_intern(name)));
}

pub fn getMemberByName(self: Self, name: [*:0]const u8) RubyError!Value {
    const Args = struct { self: Self, name: [*:0]const u8 };
    const args = Args{ .self = self, .name = name };
    return Error.protect(args, Value, struct {
        pub fn call(p: *const Args) Value {
            return p.self.getMemberByNameUnprotected(p.name);
        }
    }.call);
}

pub fn arefUnprotected(self: Self, key: Value) Value {
    return Value.fromRaw(crb.rb_struct_aref(self.raw, key.raw));
}

pub fn aref(self: Self, key: Value) RubyError!Value {
    const Args = struct { self: Self, key: Value };
    const args = Args{ .self = self, .key = key };
    return Error.protect(args, Value, struct {
        pub fn call(p: *const Args) Value {
            return p.self.arefUnprotected(p.key);
        }
    }.call);
}

pub fn members(self: Self) Array {
    return Array.fromValue(Value.fromRaw(crb.rb_struct_members(self.raw)));
}

pub const Class = struct {
    raw: crb.VALUE,

    pub fn fromValue(value: Value) Class {
        return .{ .raw = value.asRaw() };
    }

    pub fn asValue(cls: Class) Value {
        return Value.fromRaw(cls.raw);
    }

    pub fn asClass(cls: Class) RbClass {
        return RbClass.fromValue(cls.asValue());
    }

    /// Options for defining a Data class
    pub const DefineOptions = struct {
        /// Superclass (nil for default Data superclass)
        super: ?Value = null,
    };

    pub fn defineUnprotected(member_names: []const [*:0]const u8, options: DefineOptions) Class {
        const data_class = if (options.super) |s| s.raw else crb.rb_const_get(crb.rb_cObject, ids.Data);
        var syms: [8]crb.VALUE = undefined;
        for (member_names, 0..) |name, i| {
            syms[i] = crb.rb_id2sym(crb.rb_intern(name));
        }
        const klass = crb.rb_funcallv(data_class, ids.define, @intCast(member_names.len), &syms);
        return .{ .raw = klass };
    }

    pub fn define(member_names: []const [*:0]const u8, options: DefineOptions) RubyError!Class {
        const Args = struct { member_names: []const [*:0]const u8, options: DefineOptions };
        const args = Args{ .member_names = member_names, .options = options };
        return Error.protect(args, Class, struct {
            pub fn call(p: *const Args) Class {
                return defineUnprotected(p.member_names, p.options);
            }
        }.call);
    }

    pub fn newUnprotected(self: Class, values: []const Value) Data {
        const raw_values: [*]const crb.VALUE = @ptrCast(values.ptr);
        return .{ .raw = crb.rb_funcallv(self.raw, ids.new, @intCast(values.len), raw_values) };
    }

    pub fn new(self: Class, values: []const Value) RubyError!Data {
        const Args = struct { self: Class, values: []const Value };
        const args = Args{ .self = self, .values = values };
        return Error.protect(args, Data, struct {
            pub fn call(p: *const Args) Data {
                return p.self.newUnprotected(p.values);
            }
        }.call);
    }

    pub fn members(self: Class) Array {
        return Array.fromValue(Value.fromRaw(crb.rb_struct_s_members(self.raw)));
    }
};

const Data = Self;

test "Data define and new" {
    const point_cls = try Data.Class.define(&.{ "x", "y" }, .{});

    const p = try point_cls.new(&.{ Fixnum.fromComptime(10).asValue(), Fixnum.fromComptime(20).asValue() });

    try std.testing.expectEqual(Value.Type.@"struct", p.asValue().getType());

    const x = p.get(0);
    const y = p.get(1);

    try std.testing.expectEqual(@as(c_longlong, 10), try x.to(c_longlong));
    try std.testing.expectEqual(@as(c_longlong, 20), try y.to(c_longlong));
}

test "Data member access by name" {
    const person_cls = try Data.Class.define(&.{ "name", "age" }, .{});

    const p = try person_cls.new(&.{ (try String.new("Alice")).asValue(), Fixnum.fromComptime(30).asValue() });

    const name = try p.getMemberByName("name");
    const age = try p.getMemberByName("age");

    try std.testing.expectEqualStrings("Alice", try name.toSlice());
    try std.testing.expectEqual(@as(c_longlong, 30), try age.to(c_longlong));
}

test "Data size and members" {
    const triple_cls = try Data.Class.define(&.{ "a", "b", "c" }, .{});

    const t = try triple_cls.new(&.{ Fixnum.fromComptime(1).asValue(), Fixnum.fromComptime(2).asValue(), Fixnum.fromComptime(3).asValue() });

    try std.testing.expectEqual(@as(usize, 3), t.size());

    const mems = triple_cls.members();
    try std.testing.expectEqual(@as(usize, 3), mems.len());
}

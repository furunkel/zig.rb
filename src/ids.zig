const crb = @import("crb.zig");

pub fn modInit() void {
    @"<=>" = crb.rb_intern("<=>");
    values = crb.rb_intern("values");
    @"key?" = crb.rb_intern("key?");
    keys = crb.rb_intern("keys");
    define = crb.rb_intern("define");
    new = crb.rb_intern("new");
    Data = crb.rb_intern("Data");
    @"@type" = crb.rb_intern("@type");
    @"@value" = crb.rb_intern("@value");
    inspect = crb.rb_intern("inspect");
    to_s = crb.rb_intern("to_s");
    to_f = crb.rb_intern("to_f");
    to_i = crb.rb_intern("to_i");
    to_a = crb.rb_intern("to_a");
}

pub var @"<=>": crb.ID = undefined;
pub var values: crb.ID = undefined;
pub var @"key?": crb.ID = undefined;
pub var keys: crb.ID = undefined;
pub var define: crb.ID = undefined;
pub var new: crb.ID = undefined;
pub var Data: crb.ID = undefined;
pub var @"@type": crb.ID = undefined;
pub var @"@value": crb.ID = undefined;
pub var inspect: crb.ID = undefined;
pub var to_s: crb.ID = undefined;
pub var to_f: crb.ID = undefined;
pub var to_i: crb.ID = undefined;
pub var to_a: crb.ID = undefined;

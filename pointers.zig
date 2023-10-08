const std = @import("std");

pub fn main() !void {
    var x: u8 = 10;
    var ptr_x = &x;
    ptr_x.* = 12;

    std.debug.print("{d}\n", .{x});
    std.debug.print("{d}\n", .{ptr_x});
    std.debug.print("{}\n", .{@TypeOf(ptr_x)});
}

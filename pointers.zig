const std = @import("std");

pub fn main() !void {
    var x: u8 = 10;
    var ptr_x = &x;
    ptr_x.* = 12;

    std.debug.print("{d}\n", .{x});
    std.debug.print("{d}\n", .{ptr_x});
    std.debug.print("{}\n", .{@TypeOf(ptr_x)});

    var A = [_]u8{ 2, 5, 6, 1, 1 };
    var ptr_z = &A[1];
    ptr_z.* = 12;

    std.debug.print("{d}\n", .{A[1]});
    std.debug.print("{d}\n", .{ptr_z});
    std.debug.print("{}\n", .{@TypeOf(ptr_z)});

    var ptr_y = &A;
    ptr_y[2] = 11;
    std.debug.print("{any}\n", .{A});
    std.debug.print("{}\n", .{@TypeOf(ptr_y)});
}

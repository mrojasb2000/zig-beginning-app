const std = @import("std");

pub fn main() void {
    var x: i8 = -100;
    var y: u8 = 120;
    var z: f32 = 100.324;
    var initialized: bool = true;

    std.debug.print("x = {}\n", .{x});
    std.debug.print("y = {}\n", .{y});
    std.debug.print("z = {}\n", .{z});
    std.debug.print("initialized = {}\n", .{initialized});
}

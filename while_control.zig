const std = @import("std");

pub fn main() !void {
    var x: u8 = 0;
    while (x < 11) {
        std.debug.print("{}\n", .{x});
        x += 1;
    }
}

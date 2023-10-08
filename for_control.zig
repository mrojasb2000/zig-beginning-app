const std = @import("std");

pub fn main() !void {
    const A = [_]u8{ 2, 4, 6, 8 };

    for (A) |n| {
        std.debug.print("{d}\n", .{n});
    }
}

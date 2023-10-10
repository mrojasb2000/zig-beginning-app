const std = @import("std");

pub fn main() !void {
    const a = [_]i32{ 1, 2, 3, 4, 5 };
    const b = a[1..4];
    std.debug.print("{}\n", .{@TypeOf(a)});
    std.debug.print("{}\n", .{@TypeOf(b)});
}

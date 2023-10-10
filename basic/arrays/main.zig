const std = @import("std");

pub fn main() !void {
    const a = [_]i32{ 1, 2, 3, 4, 5 };
    var end: usize = 4;
    const b = a[1..end];
    const c = b[2..];
    const d = a[1..4];
    std.debug.print("{}\n", .{@TypeOf(a)});
    // runtime
    std.debug.print("{}\n", .{@TypeOf(b)});
    // runtime
    std.debug.print("{any}\n", .{@TypeOf(c)});
    // comptime
    std.debug.print("{any}\n", .{@TypeOf(d)});
}

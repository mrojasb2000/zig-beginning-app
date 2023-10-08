const std = @import("std");

pub fn main() void {
    const msg1 = "Zig";
    const msg2 = "lang";

    std.debug.print("{s}\n", .{msg1 ** 2});
    std.debug.print("{s}\n", .{msg1 ++ msg2});
}

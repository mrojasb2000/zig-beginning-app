const std = @import("std");

pub fn main() void {
    const msg = "Ziglang";
    std.debug.print("{s}\n", .{msg});
}

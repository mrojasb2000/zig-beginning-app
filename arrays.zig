const std = @import("std");

pub fn main() void {
    const vocals = [_]u8{ 'a', 'e', 'i', 'o', 'u' };
    std.debug.print("Vocals:\t{s}\n", .{vocals});
    std.debug.print("Len:\t{d}\n", .{vocals.len});
}

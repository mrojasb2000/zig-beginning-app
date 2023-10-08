const std = @import("std");
const c = @cImport({
    @cInclude("stdio.h");
});

pub fn main() !void {
    const char_count = c.printf("Hello %s\n", "C...");
    std.debug.print("{}\n", .{@TypeOf(char_count)});
    std.debug.print("{}\n", .{char_count});
}

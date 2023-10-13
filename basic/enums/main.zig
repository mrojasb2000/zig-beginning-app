const std = @import("std");

pub fn main() !void {
    const Status = enum {
        ok,
        bad,
        unknown,
    };
    std.debug.print("{any}\n", .{Status.ok});
}

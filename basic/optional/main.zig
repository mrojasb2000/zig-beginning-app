const std = @import("std");

pub fn main() !void {
    var home: ?[]const u8 = null;
    var name: ?[]const u8 = "John Doe";
    if (home) |h| {
        std.debug.print("{any}\n", .{h});
    }
    if (name) |n| {
        std.debug.print("{any}\n", .{n});
    }
}

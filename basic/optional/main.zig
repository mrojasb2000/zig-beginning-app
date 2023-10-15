const std = @import("std");

pub fn main() !void {
    var home: ?[]const u8 = null;
    var name: ?[]const u8 = "John Doe";
    std.debug.print("{any}\n", .{home});
    std.debug.print("{any}\n", .{name});
}

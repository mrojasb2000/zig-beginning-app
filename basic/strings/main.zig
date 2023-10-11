const std = @import("std");

pub fn main() !void {
    var title: []const u8 = "Wellcome to Zig lang";
    std.debug.print("Title: {s}\n", .{title});
    std.debug.print("Length: {d}\n", .{title.len});
    std.debug.print("Data Type: {any}\n", .{@TypeOf(title)});

    // an array of 3 booleans with false as the sentinel value
    const a = [3:false]bool{ false, true, false };
    std.debug.print("Length: {d}\n", .{a.len});
    std.debug.print("Data Type: {any}\n", .{@TypeOf(a)});
    std.debug.print("{any}\n", .{std.mem.asBytes(&a).*});
}

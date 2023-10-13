const std = @import("std");

pub fn main() !void {
    // array literal
    const data = [_]u32{ 1, 2, 3, 4 };

    std.debug.print("Array contain 5 => {any}\n", .{contains(&data, 5)});
    std.debug.print("Array contain 3 => {any}\n", .{contains(&data, 3)});
}

// contains: check an array contains a value
fn contains(haystack: []const u32, neddle: u32) bool {
    for (haystack) |value| {
        if (neddle == value) {
            return true;
        }
    }
    return false;
}

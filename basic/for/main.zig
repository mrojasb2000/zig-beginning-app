const std = @import("std");

pub fn main() !void {
    // array literal
    const data = [_]u32{ 1, 2, 3, 4 };
    const more_data = [_]u32{ 1, 2, 3, 4 };

    std.debug.print("Array contain 5 => {any}\n", .{contains(&data, 5)});
    std.debug.print("Array contain 3 => {any}\n", .{contains(&data, 3)});
    std.debug.print("Array1 equals Array2 => {any}\n", .{eql(u32, &data, &more_data)});
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

pub fn eql(comptime T: type, a: []const T, b: []const T) bool {
    // if they aren't the same length, the cant't be equal
    if (a.len != b.len) return false;

    for (a, b) |a_elem, b_elem| {
        if (a_elem != b_elem) return false;
    }
    return true;
}

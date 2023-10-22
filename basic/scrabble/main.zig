const std = @import("std");

pub fn main() !void {
    const s: []const u8 = "cabbage";

    var sum: usize = 0;
    for (0..s.len) |i| {
        std.debug.print("{c} - {}\n", .{ s[i], s[i] });
        switch (s[i]) {
            97, 101, 105, 111, 117, 108, 110, 114, 115, 116 => sum += 1,
            100, 103 => sum += 2,
            98, 99, 109, 112 => sum += 3,
            102, 104, 118, 119, 121 => sum += 4,
            107 => sum += 5,
            106, 120 => sum += 8,
            113, 122 => sum += 10,
            else => sum += 0,
        }
    }
    std.debug.print("Result: {}\n", .{sum});
}

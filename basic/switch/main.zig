const std = @import("std");

pub fn main() !void {
    std.debug.print("{s}\n", .{anniversaryName(4)});
}

fn anniversaryName(years_married: u16) []const u8 {
    switch (years_married) {
        1 => return "paper",
        2 => return "cotton",
        3 => return "leather",
        4 => return "flower",
        5 => return "wood",
        6 => return "sugar",
        else => return "no more gifts for you",
    }
}

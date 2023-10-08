const std = @import("std");

fn add(a: i8, b: i8) i8 {
    return a + b;
}

pub fn main() !void {
    const a: i8 = 10;
    const b: i8 = -2;
    const c = add(a, b);
    std.debug.print("{d} + {d} = {d}\n", .{ a, b, c });
}

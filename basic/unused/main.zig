const std = @import("std");

pub fn main() !void {
    const sum = add(8999, 2);
    _ = sum;
}

fn add(a: i64, b: i64) i64 {
    _ = b;
    // notice this is a + a, not a + b
    return a + a;
}

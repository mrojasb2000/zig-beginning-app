const std = @import("std");

pub fn main() void {
    const l1: u8 = 'Z';
    const l2: u8 = 'I';

    const l3: u8 = 'g';
    std.debug.print("{c} - {c} - {c}\n", .{ l1, l2, l3 });
}

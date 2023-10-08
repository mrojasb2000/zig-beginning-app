const std = @import("std");

pub fn main() void {
    const nums = [_]u8{ 2, 5, 6, 4 };
    var x: usize = 3;
    const count = nums[1..x];
    std.debug.print("{any}\n", .{count});
    std.debug.print("{}\n", .{@TypeOf(count)});
}

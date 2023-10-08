const std = @import("std");

pub fn main() !void {
    var score: u8 = 88;

    switch (score) {
        90...100 => {
            std.debug.print("Congrats!\n", .{});
            std.debug.print("{s}\n", .{"*" ** 10});
        },
        50...89 => {
            std.debug.print("Congrats!\n", .{});
        },
        else => {
            std.debug.print("Try again...!\n", .{});
        },
    }
}

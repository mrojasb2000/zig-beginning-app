const std = @import("std");
const user = @import("models/User.zig");

// This code won't compile if `main` isn't `pub`(public)
pub fn main() !void {
    const myUser = user.User{
        .power = 9001,
        .name = "Goku",
    };
    std.debug.print("{s}'s power is {d}\n", .{ myUser.name, myUser.power });
    std.debug.print("Max power: {d}\n", .{user.MAX_POWER});
}

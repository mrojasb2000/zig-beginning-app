const std = @import("std");
const user = @import("models/User.zig");

// This code won't compile if `main` isn't `pub`(public)
pub fn main() !void {
    const goku = user.User.init("Goku", 9_001);

    const vegeta = user.User{
        .power = 12_000,
        .name = "Vegeta",
    };

    std.debug.print("{s}'s power is {d}\n", .{ goku.name, goku.power });
    std.debug.print("{s}'s power is {d}\n", .{ vegeta.name, vegeta.power });
    std.debug.print("Max power: {d}\n", .{user.MAX_POWER});

    // call diagnose on user
    goku.diagnose();
    vegeta.diagnose();

    // The above is syntactical suger for:
    user.User.diagnose(goku);
    user.User.diagnose(vegeta);
}

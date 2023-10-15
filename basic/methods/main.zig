const std = @import("std");

pub fn main() !void {
    var user = User{
        .id = 1,
        .power = 100,
    };
    std.debug.print("User {d} with power of {d}\n", .{ user.id, user.power });
    user.levelUp();
    std.debug.print("User {d} with power of {d}\n", .{ user.id, user.power });
}

pub const User = struct {
    id: u64,
    power: i32,

    fn levelUp(user: *User) void {
        user.power += 1;
    }
};

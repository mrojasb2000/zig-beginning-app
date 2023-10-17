const std = @import("std");

pub fn main() !void {
    var user = User{
        .id = 1,
        .power = 100,
    };
    std.debug.print("{*}\n", .{&user});
    std.debug.print("Power level {d} before callback\n", .{user.power});
    user.levelUp();
    std.debug.print("Power level {d} after callback\n", .{user.power});
}

const User = struct {
    id: u64,
    power: i32,

    fn levelUp(user: *User) void {
        std.debug.print("{*}\n{*}\n", .{ &user, user });
        user.power += 1;
    }
};

const std = @import("std");

pub fn main() !void {
    var name = [4]u8{ 'G', 'o', 'k', 'u' };
    const goku = User{ .id = 1, .power = 100, .name = name[0..] };
    levelUp(goku);
    std.debug.print("Id: {d}\nName: {s}\nPower: {d}\n", .{ goku.id, goku.name, goku.power });
}

fn levelUp(user: User) void {
    user.name[2] = '!';
}

pub const User = struct {
    id: u64,
    power: i32,
    // []const u8 -> []8
    name: []u8,
};

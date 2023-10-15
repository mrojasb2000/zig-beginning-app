const std = @import("std");

pub fn main() !void {
    // This is the line you want to focus on
    const save = (try Save.loadLast()) orelse Save.blank();
    std.debug.print("{any}\n", .{save});
}

pub const Save = struct {
    lives: u8,
    level: u16,

    pub fn loadLast() !?Save {
        //todo
        return null;
    }

    pub fn blank() Save {
        return .{
            .lives = 3,
            .level = 1,
        };
    }
};

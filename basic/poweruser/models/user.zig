// models/user.zig
pub const MAX_POWER = 100_000;
pub const User = struct {
    power: u64 = 0,
    name: []const u8,
};

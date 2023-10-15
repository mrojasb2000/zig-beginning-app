const std = @import("std");

pub fn main() !void {
    var pseudo_uuid: [16]u8 = undefined;
    std.crypto.random.bytes(&pseudo_uuid);
    std.debug.print("{any}", .{pseudo_uuid});
}

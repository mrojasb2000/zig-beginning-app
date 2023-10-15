const std = @import("std");

pub fn main() !void {}

fn read(stream: std.net.Stream) ![]const u8 {
    var buf: [512]u8 = undefined;
    const read = try stream.read(&buf);
    if (read == 0) {
        return error.Closed;
    }
    return buf[0..read];
}

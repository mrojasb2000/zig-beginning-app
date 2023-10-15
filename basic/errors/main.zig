const std = @import("std");

pub fn main() !void {
    std.debug.print("{any}\n", .{OpenError.NotFound});
    return OpenError.AccessDenied;
}

const OpenError = error{
    AccessDenied,
    NotFound,
};

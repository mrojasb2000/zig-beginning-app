const std = @import("std");

pub fn main() void {
    const LogType = enum(i32) {
        infomation = 200,
        err = 500,
        warning = 600,
    };
    const lfInfo = LogType.infomation;
    const lfErr = LogType.err;
    const lfWarning = LogType.warning;

    std.debug.print("{}\n", .{lfInfo});
    std.debug.print("{}\n", .{lfErr});
    std.debug.print("{}\n", .{lfWarning});
}

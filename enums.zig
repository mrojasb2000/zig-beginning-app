const std = @import("std");

pub fn main() void {
    const LogType = enum {
        infomation,
        err,
        warning,
    };
    const lfInfo = LogType.infomation;
    const lfErr = LogType.err;
    const lfWarning = LogType.warning;

    std.debug.print("{}\n", .{lfInfo});
    std.debug.print("{}\n", .{lfErr});
    std.debug.print("{}\n", .{lfWarning});
}

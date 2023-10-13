const std = @import("std");

const Status = enum {
    ok,
    bad,
    unknown,
};

const Stage = enum {
    validate,
    awaiting_confirmation,
    confirmed,
    completed,
    err,

    pub fn isCompleted(self: Stage) bool {
        return self == .confirmed or self == .err;
    }
};

pub fn main() !void {
    std.debug.print("{any}\n", .{Status.ok});
    std.debug.print("{any}\n", .{Stage.completed});
    std.debug.print("{any}\n", .{Stage.isCompleted(Stage.completed)});
}

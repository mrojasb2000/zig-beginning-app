const std = @import("std");

// An union defines a set of types that a values can have.

pub fn main() !void {
    const i = Number{ .int = 32 };
    std.debug.print("{d}\n", .{i.int});
    std.debug.print("{}\n", .{@TypeOf(i.int)});
    const f = Number{ .float = 3.2 };
    std.debug.print("{}\n", .{f.float});
    std.debug.print("{}\n", .{@TypeOf(f.float)});
    const n = Number{ .nan = {} };
    std.debug.print("{}\n", .{n.nan});
    std.debug.print("{}\n", .{@TypeOf(n.nan)});
}

const Number = union {
    int: i64,
    float: f64,
    nan: void,
};

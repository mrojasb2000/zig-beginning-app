const std = @import("std");

// An union defines a set of types that a values can have.

pub fn main() !void {
    const n = Number{ .int = 32 };
    std.debug.print("{d}\n", .{n.int});
    std.debug.print("{}\n", .{@TypeOf(n.int)});
    const f = Number{ .float = 3.2 };
    std.debug.print("{}\n", .{f.float});
    std.debug.print("{}\n", .{@TypeOf(f.float)});
}

const Number = union {
    int: i64,
    float: f64,
    nan: void,
};

const std = @import("std");
const assert = std.debug.assert;

fn fibonacci(x: i32) i32 {
    if (x <= 1) return x;
    return fibonacci(x - 1) + fibonacci(x - 2);
}

test "compile-time evaluation" {
    var array: [fibonacci(6)]i32 = undefined;

    comptime {
        assert(array.len == 12345);
    }
}

pub fn main() void {
    std.debug.print("{d}", .{fibonacci(6)});
}

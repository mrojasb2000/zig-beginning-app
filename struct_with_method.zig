const std = @import("std");

pub fn main() !void {
    const actionResult = union { code_int: u8, code_float: f32 };
    const ar1 = actionResult{ .code_int = 200 };
    const ar2 = actionResult{ .code_float = 200.13 };
    std.debug.print("Code = {d}\n", .{ar1.code_int});
    std.debug.print("Code = {d:.2}\n", .{ar2.code_float});
}

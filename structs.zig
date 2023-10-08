const std = @import("std");

pub fn main() void {
    const printConfig = struct { id: *const [5:0]u8, width: u8, height: u8, zoom: f32 };
    const pc = printConfig{ .id = "BAX11", .width = 200, .height = 100, .zoom = 0.234 };
    std.debug.print("ID:{s}\n", .{pc.id});
}

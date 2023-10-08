const std = @import("std");

const Rectangle = struct {
    width: u32,
    height: u32,
    fn calcArea(self: *Rectangle) u32 {
        return self.width * self.height;
    }
};

pub fn main() !void {
    var rect = Rectangle{ .width = 200, .height = 25 };
    var area = rect.calcArea();
    std.debug.print("{d}\n", .{area});
}

const std = @import("std");
const stdout = std.io.getStdOut().writer();

fn print_help() !void {
    try stdout.print("{s}\n", .{"-" ** 25});
    try stdout.print("0: Exit\n", .{});
    try stdout.print("1: Show help\n", .{});
    try stdout.print("2: Print Node.js version\n", .{});
    try stdout.print("{s}\n", .{"-" ** 25});
}

fn print_node_version() !void {
    const cmd_res = try std.ChildProcess.exec(.{
        .allocator = std.heap.page_allocator,
        .argv = &[_][]const u8{
            "node",
            "--version",
        },
    });
    try stdout.print("{s}\n", .{cmd_res.stdout});
}

fn ask_action() !i64 {
    const stdin = std.io.getStdIn().reader();
    var buf: [10]u8 = undefined;

    try stdout.print("Enter action: ", .{});

    if (try stdin.readUntilDelimiterOrEof(buf[0..], '\n')) |user_input| {
        return std.fmt.parseInt(i64, user_input, 10);
    } else {
        return @as(i64, 0);
    }
}

pub fn main() !void {
    try print_help();
    while (true) {
        const action = ask_action() catch -1;
        switch (action) {
            0 => {
                std.debug.print("Goodbye!\n", .{});
                break;
            },
            1 => {
                try print_help();
            },
            2 => {
                try print_node_version();
            },
            else => {
                std.debug.print("Invalid action: {d}\n", .{action});
            },
        }
    }
}

const std = @import("std");
const expect = std.testing.expect;

test "iterator looping" {
    var iter = (try std.fs.cwd().openDir(
        ".",
        .{ .iterate = true },
    )).iterate();

    var file_count: usize = 0;
    while (try iter.next()) |entry| {
        if (entry.kind == .file) file_count += 1;
    }

    try expect(file_count > 0);
}

// SPDX-FileCopyrightText: 2024 BratishkaErik and zigtutor.ru contributors
//
// SPDX-License-Identifier: CC0-1.0

const std = @import("std");

pub const files = .{
    "01.allocators-alloc.zig",
    "01.allocators-arena.zig",
    "01.allocators-create.zig",
    "01.allocators-fba.zig",
    "01.allocators-gpa.zig",
    "02.arraylist.zig",
    "03.filesystem-cwd-create.zig",
    "03.filesystem-make-dir-iterable.zig",
    "03.filesystem-stat.zig",
    "04.readers-and-writers-custom.zig",
    "04.readers-and-writers-reader.zig",
    "04.readers-and-writers-writer.zig",
    "05.formatting-array-print.zig",
    "05.formatting-custom.zig",
    "05.formatting-fmt.zig",
    "05.formatting-print.zig",
    "06.json-parse.zig",
    "06.json-stringify-strings.zig",
    "06.json-stringify.zig",
    "07.random-numbers-crypto.zig",
    "07.random-numbers.zig",
    "13.iterators-custom.zig",
    "13.iterators-looping.zig",
    "13.iterators-split.zig",
};

pub fn build(b: *std.Build) void {
    _ = b;
}

// SPDX-FileCopyrightText: 2024 BratishkaErik and zigtut.org contributors
//
// SPDX-License-Identifier: CC0-1.0

const std = @import("std");

const chapters = [_]type{
    @import("getting_started"),
    @import("language_basics"),
    @import("standard_library"),
    @import("standard_library"),
    @import("working_with_c"),
};

pub fn build(b: *std.Build) void {
    const test_step = b.step("test", "Run unit tests");
    b.default_step = test_step;

    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    inline for (chapters, 0..) |chapter, i| {
        const chapter_step = b.step(
            std.fmt.comptimePrint("test-{d}", .{i}),
            std.fmt.comptimePrint("Run unit tests ({d} chapter)", .{i}),
        );

        const file_owner = b.dependencyFromBuildZig(chapter, .{});
        inline for (chapter.files) |file| {
            const unit_tests = b.addTest(.{
                .root_source_file = file_owner.path(file),
                .target = target,
                .optimize = optimize,
            });

            const run_unit_tests = b.addRunArtifact(unit_tests);
            chapter_step.dependOn(&run_unit_tests.step);
        }

        test_step.dependOn(chapter_step);
    }
}

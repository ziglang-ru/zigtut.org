// SPDX-FileCopyrightText: 2024 BratishkaErik and zigtutor.ru contributors
//
// SPDX-License-Identifier: CC0-1.0

const std = @import("std");

pub const files = .{
    "01.assignment.zig",
    "01.undefined.zig",
    "03.expect.zig",
    "03.if-expression.zig",
    "04.while-break.zig",
    "04.while-continue-expression.zig",
    "04.while-continue.zig",
    "04.while.zig",
    "05.for.zig",
    "06.functions-recursion.zig",
    "06.functions.zig",
    "07.defer-multi.zig",
    "07.defer.zig",
    "08.errdefer.zig",
    "08.error-payload-capture.zig",
    "08.error-set-coercion.zig",
    "08.error-set-inferred.zig",
    "08.error-set-merge.zig",
    "08.error-set.zig",
    "08.error-try.zig",
    "08.error-union.zig",
    "09.switch-expression.zig",
    "09.switch-statement.zig",
    "10.switch-unreachable.zig",
    "11.pointers.zig",
    "14.slices-2.zig",
    "14.slices.zig",
    "15.enum-declarations.zig",
    "15.enum-methods.zig",
    "15.enum-ordinal-override.zig",
    "15.enum-ordinal.zig",
    "16.struct-declarations.zig",
    "16.struct-defaults.zig",
    "16.struct.zig",
    "17.union-tagged.zig",
    "18.integer-casting.zig",
    "18.integer-safe-overflow.zig",
    "18.integer-widening.zig",
    "19.floats-conversion.zig",
    "19.floats-hex-underscores.zig",
    "19.floats-literals.zig",
    "19.floats-widening.zig",
    "23.optionals-find.zig",
    "23.optionals-if-payload.zig",
    "23.optionals-orelse-unreachable.zig",
    "23.optionals-orelse.zig",
    "23.optionals-while-capture.zig",
    "24.comptime-anytype.zig",
    "24.comptime-blocks.zig",
    "24.comptime-concat-repeat.zig",
    "24.comptime-ints.zig",
    "24.comptime-returning-type.zig",
    "24.comptime-return-struct.zig",
    "24.comptime-type-branching.zig",
    "24.comptime-typeinfo.zig",
    "24.comptime-type.zig",
    "25.payload-captures-error-union-if.zig",
    "25.payload-captures-for-capture.zig",
    "25.payload-captures-for-pointer-capture.zig",
    "25.payload-captures-optional-if.zig",
    "25.payload-captures-switch-capture.zig",
    "25.payload-captures-while-error-union.zig",
    "25.payload-captures-while-optional.zig",
    "28.anonymous-structs-fully-anonymous.zig",
    "28.anonymous-structs-literal.zig",
    "28.anonymous-structs-tuple.zig",
    "29.sentinel-termination-coercion.zig",
    "29.sentinel-termination-c-string.zig",
    "29.sentinel-termination-ptrcast.zig",
    "29.sentinel-termination-slicing.zig",
    "29.sentinel-termination-string-literal.zig",
    "30.vectors-add.zig",
    "30.vectors-coercion.zig",
    "30.vectors-indexing.zig",
    "30.vectors-looping.zig",
    "30.vectors-splat-scalar.zig",
};

pub fn build(b: *std.Build) void {
    _ = b;
}

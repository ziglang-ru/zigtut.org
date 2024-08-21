---
# SPDX-FileCopyrightText: 2020 Sobeston and zig.guide contributors
# SPDX-FileCopyrightText: 2024 BratishkaErik and zigtut.org contributors
#
# SPDX-License-Identifier: MIT

title: Bit Aligned Pointers

slug: working-with-c/bit-aligned-pointers
sidebar:
    order: 7
---

Similar to aligned pointers, bit-aligned pointers have extra information in
their type, which informs how to access the data. These are necessary when the
data is not byte-aligned. Bit alignment information is often needed to address
fields inside of packed structs.

```zig
test "bit aligned pointers" {
    var x = MovementState{
        .running = false,
        .crouching = false,
        .jumping = false,
        .in_air = false,
    };

    const running = &x.running;
    running.* = true;

    const crouching = &x.crouching;
    crouching.* = true;

    try expect(@TypeOf(running) == *align(1:0:1) bool);
    try expect(@TypeOf(crouching) == *align(1:1:1) bool);

    try expect(@import("std").meta.eql(x, .{
        .running = true,
        .crouching = true,
        .jumping = false,
        .in_air = false,
    }));
}
```

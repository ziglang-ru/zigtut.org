---
# SPDX-FileCopyrightText: 2020 Sobeston and zig.guide contributors
# SPDX-FileCopyrightText: 2024 BratishkaErik and zigtutor.ru contributors
#
# SPDX-License-Identifier: MIT

title: Labelled Blocks

slug: language-basics/labelled-blocks
sidebar:
    order: 20
---

Blocks in Zig are expressions and can be given labels, which are used to yield
values. Here, we are using a label called `blk`. Blocks yield values, meaning
they can be used in place of a value. The value of an empty block `{}` is a
value of the type `void`.

```zig
test "labelled blocks" {
    const count = blk: {
        var sum: u32 = 0;
        var i: u32 = 0;
        while (i < 10) : (i += 1) sum += i;
        break :blk sum;
    };
    try expect(count == 45);
    try expect(@TypeOf(count) == u32);
}
```

This can be seen as being equivalent to C's `i++`.


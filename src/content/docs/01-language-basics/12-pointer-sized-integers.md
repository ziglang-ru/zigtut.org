---
# SPDX-FileCopyrightText: 2020 Sobeston and zig.guide contributors
# SPDX-FileCopyrightText: 2024 BratishkaErik and zigtut.org contributors
#
# SPDX-License-Identifier: MIT

title: Pointer Sized Integers

slug: language-basics/pointer-sized-integers
sidebar:
    order: 12
---

`usize` and `isize` are given as unsigned and signed integers which are the same
size as pointers.

```zig
test "usize" {
    try expect(@sizeOf(usize) == @sizeOf(*u8));
    try expect(@sizeOf(isize) == @sizeOf(*u8));
}
```

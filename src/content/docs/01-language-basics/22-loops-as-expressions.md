---
# SPDX-FileCopyrightText: 2020 Sobeston and zig.guide contributors
# SPDX-FileCopyrightText: 2024 BratishkaErik and zigtut.org contributors
#
# SPDX-License-Identifier: MIT

title: Loops as Expressions

slug: language-basics/loops-as-expressions
sidebar:
    order: 22
---

Like `return`, `break` accepts a value. This can be used to yield a value from a
loop. Loops in Zig also have an `else` branch, which is evaluated when the loop
is not exited with a `break`.

```zig
fn rangeHasNumber(begin: usize, end: usize, number: usize) bool {
    var i = begin;
    return while (i < end) : (i += 1) {
        if (i == number) {
            break true;
        }
    } else false;
}

test "while loop expression" {
    try expect(rangeHasNumber(0, 10, 3));
}
```

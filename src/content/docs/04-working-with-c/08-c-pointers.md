---
# SPDX-FileCopyrightText: 2020 Sobeston and zig.guide contributors
# SPDX-FileCopyrightText: 2024 BratishkaErik and zigtutor.ru contributors
#
# SPDX-License-Identifier: MIT

title: C Pointers

slug: working-with-c/c-pointers
sidebar:
    order: 8
---

Up until now, we have used the following kinds of pointers:

- single item pointers - `*T`
- many item pointers - `[*]T`
- slices - `[]T`

Unlike the aforementioned pointers, C pointers cannot deal with specially
aligned data and may point to the address `0`. C pointers coerce back and forth
between integers, and also coerce to single and multi item pointers. When a C
pointer of value `0` is coerced to a non-optional pointer, this is detectable
illegal behaviour.

Outside of automatically translated C code, the usage of `[*c]` is almost always
a bad idea, and should almost never be used.

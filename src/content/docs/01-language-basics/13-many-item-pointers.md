---
# SPDX-FileCopyrightText: 2020 Sobeston and zig.guide contributors
# SPDX-FileCopyrightText: 2024 BratishkaErik and zigtut.org contributors
#
# SPDX-License-Identifier: MIT

title: Many-item Pointers

slug: language-basics/many-item-pointers
sidebar:
    order: 13
---

Sometimes, you may have a pointer to an unknown number of elements. `[*]T` is
the solution for this, which works like `*T` but also supports indexing syntax,
pointer arithmetic, and slicing. Unlike `*T`, it cannot point to a type that
does not have a known size. `*T` coerces to `[*]T`.

These many pointers may point to any amount of elements, including 0 and 1.

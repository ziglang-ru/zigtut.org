---
# SPDX-FileCopyrightText: 2020 Sobeston and zig.guide contributors
# SPDX-FileCopyrightText: 2024 BratishkaErik and zigtut.org contributors
#
# SPDX-License-Identifier: MIT

title: Opaque

slug: language-basics/opaque
sidebar:
    order: 27
---

[`opaque`](https://ziglang.org/documentation/master/#opaque) types in Zig have
an unknown (albeit non-zero) size and alignment. Because of this these data
types cannot be stored directly. These are used to maintain type safety with
pointers to types that we don't have information about.


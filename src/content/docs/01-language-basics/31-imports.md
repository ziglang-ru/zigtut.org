---
# SPDX-FileCopyrightText: 2020 Sobeston and zig.guide contributors
# SPDX-FileCopyrightText: 2024 BratishkaErik and zigtutor.ru contributors
#
# SPDX-License-Identifier: MIT

title: Imports

slug: language-basics/imports
sidebar:
    order: 31
---

The built-in function
[`@import`](https://ziglang.org/documentation/master/#import) takes in a file,
and gives you a struct type based on that file. All declarations labelled as
`pub` (for public) will end up in this struct type, ready for use.

`@import("std")` is a special case in the compiler, and gives you access to the
standard library. Other
[`@import`](https://ziglang.org/documentation/master/#import)s will take in a
file path, or a package name (more on packages in a later chapter).

We will explore more of the standard library in later chapters.

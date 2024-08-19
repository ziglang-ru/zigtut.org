---
# SPDX-FileCopyrightText: 2020 Sobeston and zig.guide contributors
# SPDX-FileCopyrightText: 2024 BratishkaErik and zigtutor.ru contributors
#
# SPDX-License-Identifier: MIT

title: Linking libc

slug: working-with-c/linking-libc
sidebar:
    order: 11
---

Linking libc can be done via the command line via `-lc`, or via `build.zig`
using `exe.linkLibC();`. The libc used is that of the compilation's target; Zig
provides libc for many targets.

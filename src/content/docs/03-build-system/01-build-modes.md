---
# SPDX-FileCopyrightText: 2020 Sobeston and zig.guide contributors
# SPDX-FileCopyrightText: 2024 BratishkaErik and zigtutor.ru contributors
#
# SPDX-License-Identifier: MIT

title: Build Modes

slug: build-system/build-modes
sidebar:
    order: 1
---

Zig provides four build modes, with debug being the default as it produces the
shortest compile times.

|              | Runtime Safety | Optimizations |
| ------------ | -------------- | ------------- |
| Debug        | Yes            | No            |
| ReleaseSafe  | Yes            | Yes, Speed    |
| ReleaseSmall | No             | Yes, Size     |
| ReleaseFast  | No             | Yes, Speed    |

These may be used with `zig run` and `zig test` with the arguments
`-O ReleaseSafe`, `-O ReleaseSmall`, and `-O ReleaseFast`.

Users are recommended to develop their software with runtime safety enabled,
despite its small speed disadvantage.

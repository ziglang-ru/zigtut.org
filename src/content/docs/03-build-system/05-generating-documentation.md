---
# SPDX-FileCopyrightText: 2020 Sobeston and zig.guide contributors
# SPDX-FileCopyrightText: 2024 BratishkaErik and zigtut.org contributors
#
# SPDX-License-Identifier: MIT

title: Generating Documentation

slug: build-system/generating-documentation
sidebar:
    order: 5
---

The Zig compiler comes with automatic documentation generation. This can be
invoked by adding `-femit-docs` to your `zig build-{exe, lib, obj}` or `zig run`
command. This documentation is saved into `./docs`, as a small static website.

Zig's documentation generation makes use of _doc comments_ which are similar to
comments, using `///` instead of `//`, and preceding globals.

Here we will save this as `x.zig` and build documentation for it with
`zig build-lib -femit-docs x.zig -target native-windows`. There are some things
to take away here:

- Only things that are public with a doc comment will appear
- Blank doc comments may be used
- Doc comments can make use of subset of markdown
- Things will only appear inside generated documentation if the compiler
  analyses them; you may need to force analysis to happen to get things to
  appear.


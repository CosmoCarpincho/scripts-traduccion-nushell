---
title: loop
categories: |
  core
version: 0.101.0
core: |
  Run a block in a loop.
usage: |
  Run a block in a loop.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `loop` for [core](/commands/categories/core.md)

<div class='command-title'>Run a block in a loop.</div>

## Signature

```> loop {flags} (block)```

## Parameters

 -  `block`: Block to loop.


## Input/output types:

| input   | output  |
| ------- | ------- |
| nothing | nothing |

## Examples

Loop while a condition is true
```nu
> mut x = 0; loop { if $x > 10 { break }; $x = $x + 1 }; $x
11
```

## Notes
This command is a parser keyword. For details, check:
  https://www.nushell.sh/book/thinking_in_nu.html
---
title: ansi strip
categories: |
  platform
version: 0.101.0
platform: |
  Strip ANSI escape sequences from a string.
usage: |
  Strip ANSI escape sequences from a string.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `ansi strip` for [platform](/commands/categories/platform.md)

<div class='command-title'>Strip ANSI escape sequences from a string.</div>

## Signature

```> ansi strip {flags} ...rest```

## Parameters

 -  `...rest`: For a data structure input, remove ANSI sequences from strings at the given cell paths.


## Input/output types:

| input        | output       |
| ------------ | ------------ |
| list\<string\> | list\<string\> |
| record       | record       |
| string       | string       |
| table        | table        |
## Examples

Strip ANSI escape sequences from a string
```nu
> $'(ansi green)(ansi cursor_on)hello' | ansi strip
hello
```
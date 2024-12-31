---
title: str snake-case
categories: |
  strings
version: 0.101.0
strings: |
  Convert a string to snake_case.
usage: |
  Convert a string to snake_case.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `str snake-case` for [strings](/commands/categories/strings.md)

<div class='command-title'>Convert a string to snake_case.</div>

## Signature

```> str snake-case {flags} ...rest```

## Parameters

 -  `...rest`: For a data structure input, convert strings at the given cell paths


## Input/output types:

| input        | output       |
| ------------ | ------------ |
| list\<string\> | list\<string\> |
| record       | record       |
| string       | string       |
| table        | table        |
## Examples

convert a string to snake_case
```nu
>  "NuShell" | str snake-case
nu_shell
```

convert a string to snake_case
```nu
>  "this_is_the_second_case" | str snake-case
this_is_the_second_case
```

convert a string to snake_case
```nu
> "this-is-the-first-case" | str snake-case
this_is_the_first_case
```

convert a column from a table to snake_case
```nu
> [[lang, gems]; [nuTest, 100]] | str snake-case lang
╭───┬─────────┬──────╮
│ # │  lang   │ gems │
├───┼─────────┼──────┤
│ 0 │ nu_test │  100 │
╰───┴─────────┴──────╯

```
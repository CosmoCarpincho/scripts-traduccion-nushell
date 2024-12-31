---
title: split row
categories: |
  strings
version: 0.101.0
strings: |
  Split a string into multiple rows using a separator.
usage: |
  Split a string into multiple rows using a separator.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `split row` for [strings](/commands/categories/strings.md)

<div class='command-title'>Split a string into multiple rows using a separator.</div>

## Signature

```> split row {flags} (separator)```

## Flags

 -  `--number, -n {int}`: Split into maximum number of items
 -  `--regex, -r`: use regex syntax for separator

## Parameters

 -  `separator`: A character or regex that denotes what separates rows.


## Input/output types:

| input        | output       |
| ------------ | ------------ |
| list\<string\> | list\<string\> |
| string       | list\<string\> |
## Examples

Split a string into rows of char
```nu
> 'abc' | split row ''
╭───┬───╮
│ 0 │   │
│ 1 │ a │
│ 2 │ b │
│ 3 │ c │
│ 4 │   │
╰───┴───╯

```

Split a string into rows by the specified separator
```nu
> 'a--b--c' | split row '--'
╭───┬───╮
│ 0 │ a │
│ 1 │ b │
│ 2 │ c │
╰───┴───╯

```

Split a string by '-'
```nu
> '-a-b-c-' | split row '-'
╭───┬───╮
│ 0 │   │
│ 1 │ a │
│ 2 │ b │
│ 3 │ c │
│ 4 │   │
╰───┴───╯

```

Split a string by regex
```nu
> 'a   b       c' | split row -r '\s+'
╭───┬───╮
│ 0 │ a │
│ 1 │ b │
│ 2 │ c │
╰───┴───╯

```
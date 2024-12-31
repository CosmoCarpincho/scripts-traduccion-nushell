---
title: format pattern
categories: |
  strings
version: 0.101.0
strings: |
  Format columns into a string using a simple pattern.
usage: |
  Format columns into a string using a simple pattern.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `format pattern` for [strings](/commands/categories/strings.md)

<div class='command-title'>Format columns into a string using a simple pattern.</div>

## Signature

```> format pattern {flags} (pattern)```

## Parameters

 -  `pattern`: the pattern to output. e.g.) "{foo}: {bar}"


## Input/output types:

| input  | output       |
| ------ | ------------ |
| record | any          |
| table  | list\<string\> |
## Examples

Print filenames with their sizes
```nu
> ls | format pattern '{name}: {size}'

```

Print elements from some columns of a table
```nu
> [[col1, col2]; [v1, v2] [v3, v4]] | format pattern '{col2}'
╭───┬────╮
│ 0 │ v2 │
│ 1 │ v4 │
╰───┴────╯

```
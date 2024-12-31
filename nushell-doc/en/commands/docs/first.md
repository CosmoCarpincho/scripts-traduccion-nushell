---
title: first
categories: |
  filters
version: 0.101.0
filters: |
  Return only the first several rows of the input. Counterpart of `last`. Opposite of `skip`.
usage: |
  Return only the first several rows of the input. Counterpart of `last`. Opposite of `skip`.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `first` for [filters](/commands/categories/filters.md)

<div class='command-title'>Return only the first several rows of the input. Counterpart of `last`. Opposite of `skip`.</div>

## Signature

```> first {flags} (rows)```

## Parameters

 -  `rows`: Starting from the front, the number of rows to return.


## Input/output types:

| input     | output |
| --------- | ------ |
| binary    | binary |
| list\<any\> | any    |
| range     | any    |
## Examples

Return the first item of a list/table
```nu
> [1 2 3] | first
1
```

Return the first 2 items of a list/table
```nu
> [1 2 3] | first 2
╭───┬───╮
│ 0 │ 1 │
│ 1 │ 2 │
╰───┴───╯

```

Return the first 2 bytes of a binary value
```nu
> 0x[01 23 45] | first 2
Length: 2 (0x2) bytes | printable whitespace ascii_other non_ascii
00000000:   01 23                                                •#

```

Return the first item of a range
```nu
> 1..3 | first
1
```
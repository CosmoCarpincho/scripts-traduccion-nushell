---
title: headers
categories: |
  filters
version: 0.101.0
filters: |
  Use the first row of the table as column names.
usage: |
  Use the first row of the table as column names.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `headers` for [filters](/commands/categories/filters.md)

<div class='command-title'>Use the first row of the table as column names.</div>

## Signature

```> headers {flags} ```


## Input/output types:

| input     | output |
| --------- | ------ |
| list\<any\> | table  |
| table     | table  |
## Examples

Sets the column names for a table created by `split column`
```nu
> "a b c|1 2 3" | split row "|" | split column " " | headers
╭───┬───┬───┬───╮
│ # │ a │ b │ c │
├───┼───┼───┼───┤
│ 0 │ 1 │ 2 │ 3 │
╰───┴───┴───┴───╯

```

Columns which don't have data in their first row are removed
```nu
> "a b c|1 2 3|1 2 3 4" | split row "|" | split column " " | headers
╭───┬───┬───┬───╮
│ # │ a │ b │ c │
├───┼───┼───┼───┤
│ 0 │ 1 │ 2 │ 3 │
│ 1 │ 1 │ 2 │ 3 │
╰───┴───┴───┴───╯

```
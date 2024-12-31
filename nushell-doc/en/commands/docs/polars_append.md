---
title: polars append
categories: |
  dataframe
version: 0.101.0
dataframe: |
  Appends a new dataframe.
usage: |
  Appends a new dataframe.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `polars append` for [dataframe](/commands/categories/dataframe.md)

<div class='command-title'>Appends a new dataframe.</div>

::: warning This command requires a plugin
The `polars append` command resides in the `polars` plugin.
To use this command, you must install and register `nu_plugin_polars`.
See the [Plugins](/book/plugins.html) chapter in the book for more information.
:::


## Signature

```> polars append {flags} (other)```

## Flags

 -  `--col, -c`: append as new columns instead of rows

## Parameters

 -  `other`: other dataframe to append


## Input/output types:

| input | output |
| ----- | ------ |
| any   | any    |

## Examples

Appends a dataframe as new columns
```nu
> let a = ([[a b]; [1 2] [3 4]] | polars into-df);
    $a | polars append $a
╭───┬───┬───┬─────┬─────╮
│ # │ a │ b │ a_x │ b_x │
├───┼───┼───┼─────┼─────┤
│ 0 │ 1 │ 2 │   1 │   2 │
│ 1 │ 3 │ 4 │   3 │   4 │
╰───┴───┴───┴─────┴─────╯

```

Appends a dataframe merging at the end of columns
```nu
> let a = ([[a b]; [1 2] [3 4]] | polars into-df); $a | polars append $a --col
╭───┬───┬───╮
│ # │ a │ b │
├───┼───┼───┤
│ 0 │ 1 │ 2 │
│ 1 │ 3 │ 4 │
│ 2 │ 1 │ 2 │
│ 3 │ 3 │ 4 │
╰───┴───┴───╯

```
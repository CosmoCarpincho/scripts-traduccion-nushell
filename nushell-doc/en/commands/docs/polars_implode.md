---
title: polars implode
categories: |
  dataframe
version: 0.101.0
dataframe: |
  Aggregates values into a list.
usage: |
  Aggregates values into a list.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `polars implode` for [dataframe](/commands/categories/dataframe.md)

<div class='command-title'>Aggregates values into a list.</div>

::: warning This command requires a plugin
The `polars implode` command resides in the `polars` plugin.
To use this command, you must install and register `nu_plugin_polars`.
See the [Plugins](/book/plugins.html) chapter in the book for more information.
:::


## Signature

```> polars implode {flags} ```


## Input/output types:

| input | output |
| ----- | ------ |
| any   | any    |

## Examples

Create two lists for columns a and b with all the rows as values.
```nu
> [[a b]; [1 4] [2 5] [3 6]] | polars into-df | polars select (polars col '*' | polars implode) | polars collect
╭───┬───────────┬───────────╮
│ # │     a     │     b     │
├───┼───────────┼───────────┤
│ 0 │ ╭───┬───╮ │ ╭───┬───╮ │
│   │ │ 0 │ 1 │ │ │ 0 │ 4 │ │
│   │ │ 1 │ 2 │ │ │ 1 │ 5 │ │
│   │ │ 2 │ 3 │ │ │ 2 │ 6 │ │
│   │ ╰───┴───╯ │ ╰───┴───╯ │
╰───┴───────────┴───────────╯

```
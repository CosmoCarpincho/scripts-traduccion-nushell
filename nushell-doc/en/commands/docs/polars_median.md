---
title: polars median
categories: |
  lazyframe
version: 0.101.0
lazyframe: |
  Median value from columns in a dataframe or creates expression for an aggregation
usage: |
  Median value from columns in a dataframe or creates expression for an aggregation
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `polars median` for [lazyframe](/commands/categories/lazyframe.md)

<div class='command-title'>Median value from columns in a dataframe or creates expression for an aggregation</div>

::: warning This command requires a plugin
The `polars median` command resides in the `polars` plugin.
To use this command, you must install and register `nu_plugin_polars`.
See the [Plugins](/book/plugins.html) chapter in the book for more information.
:::


## Signature

```> polars median {flags} ```


## Input/output types:

| input | output |
| ----- | ------ |
| any   | any    |

## Examples

Median aggregation for a group-by
```nu
> [[a b]; [one 2] [one 4] [two 1]]
                    | polars into-df
                    | polars group-by a
                    | polars agg (polars col b | polars median)
                    | polars collect
                    | polars sort-by a
╭───┬─────┬──────╮
│ # │  a  │  b   │
├───┼─────┼──────┤
│ 0 │ one │ 3.00 │
│ 1 │ two │ 1.00 │
╰───┴─────┴──────╯

```

Median value from columns in a dataframe
```nu
> [[a b]; [6 2] [4 2] [2 2]] | polars into-df | polars median | polars collect
╭───┬──────┬──────╮
│ # │  a   │  b   │
├───┼──────┼──────┤
│ 0 │ 4.00 │ 2.00 │
╰───┴──────┴──────╯

```
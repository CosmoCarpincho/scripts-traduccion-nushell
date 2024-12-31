---
title: polars agg-groups
categories: |
  dataframe
version: 0.101.0
dataframe: |
  Creates an agg_groups expression.
usage: |
  Creates an agg_groups expression.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `polars agg-groups` for [dataframe](/commands/categories/dataframe.md)

<div class='command-title'>Creates an agg_groups expression.</div>

::: warning This command requires a plugin
The `polars agg-groups` command resides in the `polars` plugin.
To use this command, you must install and register `nu_plugin_polars`.
See the [Plugins](/book/plugins.html) chapter in the book for more information.
:::


## Signature

```> polars agg-groups {flags} ```


## Input/output types:

| input | output |
| ----- | ------ |
| any   | any    |

## Examples

Get the group index of the group by operations.
```nu
> [[group value]; [one 94] [one 95] [one 96] [two 97] [two 98] [two 99]]
                | polars into-df
                | polars group-by group
                | polars agg (polars col value | polars agg-groups)
                | polars collect
                | polars sort-by group
╭───┬───────┬───────────╮
│ # │ group │  values   │
├───┼───────┼───────────┤
│ 0 │ one   │ ╭───┬───╮ │
│   │       │ │ 0 │ 0 │ │
│   │       │ │ 1 │ 1 │ │
│   │       │ │ 2 │ 2 │ │
│   │       │ ╰───┴───╯ │
│ 1 │ two   │ ╭───┬───╮ │
│   │       │ │ 0 │ 3 │ │
│   │       │ │ 1 │ 4 │ │
│   │       │ │ 2 │ 5 │ │
│   │       │ ╰───┴───╯ │
╰───┴───────┴───────────╯

```
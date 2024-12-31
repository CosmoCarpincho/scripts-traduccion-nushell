---
title: polars explode
categories: |
  lazyframe
version: 0.101.0
lazyframe: |
  Explodes a dataframe or creates a explode expression.
usage: |
  Explodes a dataframe or creates a explode expression.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `polars explode` for [lazyframe](/commands/categories/lazyframe.md)

<div class='command-title'>Explodes a dataframe or creates a explode expression.</div>

::: warning This command requires a plugin
The `polars explode` command resides in the `polars` plugin.
To use this command, you must install and register `nu_plugin_polars`.
See the [Plugins](/book/plugins.html) chapter in the book for more information.
:::


## Signature

```> polars explode {flags} ...rest```

## Parameters

 -  `...rest`: columns to explode, only applicable for dataframes


## Input/output types:

| input | output |
| ----- | ------ |
| any   | any    |

## Examples

Explode the specified dataframe
```nu
> [[id name hobbies]; [1 Mercy [Cycling Knitting]] [2 Bob [Skiing Football]]]
                    | polars into-df
                    | polars explode hobbies
                    | polars collect
                    | polars sort-by [id, name]
╭───┬────┬───────┬──────────╮
│ # │ id │ name  │ hobbies  │
├───┼────┼───────┼──────────┤
│ 0 │  1 │ Mercy │ Cycling  │
│ 1 │  1 │ Mercy │ Knitting │
│ 2 │  2 │ Bob   │ Skiing   │
│ 3 │  2 │ Bob   │ Football │
╰───┴────┴───────┴──────────╯

```

Select a column and explode the values
```nu
> [[id name hobbies]; [1 Mercy [Cycling Knitting]] [2 Bob [Skiing Football]]] | polars into-df | polars select (polars col hobbies | polars explode)
╭───┬──────────╮
│ # │ hobbies  │
├───┼──────────┤
│ 0 │ Cycling  │
│ 1 │ Knitting │
│ 2 │ Skiing   │
│ 3 │ Football │
╰───┴──────────╯

```
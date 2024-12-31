---
title: polars profile
categories: |
  dataframe
version: 0.101.0
dataframe: |
  Profile a lazy dataframe.
usage: |
  Profile a lazy dataframe.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `polars profile` for [dataframe](/commands/categories/dataframe.md)

<div class='command-title'>Profile a lazy dataframe.</div>

::: warning This command requires a plugin
The `polars profile` command resides in the `polars` plugin.
To use this command, you must install and register `nu_plugin_polars`.
See the [Plugins](/book/plugins.html) chapter in the book for more information.
:::


## Signature

```> polars profile {flags} ```


## Input/output types:

| input | output |
| ----- | ------ |
| any   | any    |

## Examples

Profile a lazy dataframe
```nu
> [[a b]; [1 2] [1 4] [2 6] [2 4]]
    | polars into-lazy
    | polars group-by a
    | polars agg [
        (polars col b | polars min | polars as "b_min")
        (polars col b | polars max | polars as "b_max")
        (polars col b | polars sum | polars as "b_sum")
     ]
    | polars profile


```

## Notes
This will run the query and return a record containing the materialized DataFrame and a DataFrame that contains profiling information of each node that is executed.

The units of the timings are microseconds.
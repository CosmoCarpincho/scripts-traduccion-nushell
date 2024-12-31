---
title: polars get-second
categories: |
  dataframe
version: 0.101.0
dataframe: |
  Gets second from date.
usage: |
  Gets second from date.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `polars get-second` for [dataframe](/commands/categories/dataframe.md)

<div class='command-title'>Gets second from date.</div>

::: warning This command requires a plugin
The `polars get-second` command resides in the `polars` plugin.
To use this command, you must install and register `nu_plugin_polars`.
See the [Plugins](/book/plugins.html) chapter in the book for more information.
:::


## Signature

```> polars get-second {flags} ```


## Input/output types:

| input | output |
| ----- | ------ |
| any   | any    |

## Examples

Returns second from a date
```nu
> let dt = ('2020-08-04T16:39:18+00:00' | into datetime --timezone 'UTC');
    let df = ([$dt $dt] | polars into-df);
    $df | polars get-second
╭───┬────╮
│ # │ 0  │
├───┼────┤
│ 0 │ 18 │
│ 1 │ 18 │
╰───┴────╯

```
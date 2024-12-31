---
title: polars lit
categories: |
  expression
version: 0.101.0
expression: |
  Creates a literal expression.
usage: |
  Creates a literal expression.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `polars lit` for [expression](/commands/categories/expression.md)

<div class='command-title'>Creates a literal expression.</div>

::: warning This command requires a plugin
The `polars lit` command resides in the `polars` plugin.
To use this command, you must install and register `nu_plugin_polars`.
See the [Plugins](/book/plugins.html) chapter in the book for more information.
:::


## Signature

```> polars lit {flags} (literal)```

## Parameters

 -  `literal`: literal to construct the expression


## Input/output types:

| input | output |
| ----- | ------ |
| any   | any    |

## Examples

Created a literal expression and converts it to a nu object
```nu
> polars lit 2 | polars into-nu
╭───────┬────────────╮
│ expr  │ literal    │
│ value │ dyn int: 2 │
╰───────┴────────────╯
```
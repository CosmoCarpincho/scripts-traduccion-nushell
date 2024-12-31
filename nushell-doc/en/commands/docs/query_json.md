---
title: query json
categories: |
  filters
version: 0.101.0
filters: |
  execute json query on json file (open --raw <file> | query json 'query string')
usage: |
  execute json query on json file (open --raw <file> | query json 'query string')
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `query json` for [filters](/commands/categories/filters.md)

<div class='command-title'>execute json query on json file (open --raw &lt;file&gt; | query json &#x27;query string&#x27;)</div>

::: warning This command requires a plugin
The `query json` command resides in the `query` plugin.
To use this command, you must install and register `nu_plugin_query`.
See the [Plugins](/book/plugins.html) chapter in the book for more information.
:::


## Signature

```> query json {flags} (query)```

## Parameters

 -  `query`: json query


## Input/output types:

| input | output |
| ----- | ------ |
| any   | any    |
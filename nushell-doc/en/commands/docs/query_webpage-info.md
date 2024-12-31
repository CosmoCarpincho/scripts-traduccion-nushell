---
title: query webpage-info
categories: |
  network
version: 0.101.0
network: |
  uses the webpage crate to extract info from html: title, description, language, links, RSS feeds, Opengraph, Schema.org, and more
usage: |
  uses the webpage crate to extract info from html: title, description, language, links, RSS feeds, Opengraph, Schema.org, and more
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `query webpage-info` for [network](/commands/categories/network.md)

<div class='command-title'>uses the webpage crate to extract info from html: title, description, language, links, RSS feeds, Opengraph, Schema.org, and more</div>

::: warning This command requires a plugin
The `query webpage-info` command resides in the `query` plugin.
To use this command, you must install and register `nu_plugin_query`.
See the [Plugins](/book/plugins.html) chapter in the book for more information.
:::


## Signature

```> query webpage-info {flags} ```


## Input/output types:

| input  | output |
| ------ | ------ |
| string | record |

## Examples

extract detailed info from phoronix.com website
```nu
> http get https://phoronix.com | query webpage-info

```
---
title: help aliases
categories: |
  core
version: 0.101.0
core: |
  Show help on nushell aliases.
usage: |
  Show help on nushell aliases.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `help aliases` for [core](/commands/categories/core.md)

<div class='command-title'>Show help on nushell aliases.</div>

## Signature

```> help aliases {flags} ...rest```

## Flags

 -  `--find, -f {string}`: string to find in alias names and descriptions

## Parameters

 -  `...rest`: The name of alias to get help on.


## Input/output types:

| input   | output |
| ------- | ------ |
| nothing | table  |

## Examples

show all aliases
```nu
> help aliases

```

show help for single alias
```nu
> help aliases my-alias

```

search for string in alias names and descriptions
```nu
> help aliases --find my-alias

```
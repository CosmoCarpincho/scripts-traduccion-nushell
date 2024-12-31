---
title: from yml
categories: |
  formats
version: 0.101.0
formats: |
  Parse text as .yaml/.yml and create table.
usage: |
  Parse text as .yaml/.yml and create table.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `from yml` for [formats](/commands/categories/formats.md)

<div class='command-title'>Parse text as .yaml&#x2f;.yml and create table.</div>

## Signature

```> from yml {flags} ```


## Input/output types:

| input  | output |
| ------ | ------ |
| string | any    |

## Examples

Converts yaml formatted string to table
```nu
> 'a: 1' | from yaml
╭───┬───╮
│ a │ 1 │
╰───┴───╯
```

Converts yaml formatted string to table
```nu
> '[ a: 1, b: [1, 2] ]' | from yaml
╭───┬────┬───────────╮
│ # │ a  │     b     │
├───┼────┼───────────┤
│ 0 │  1 │    ❎     │
│ 1 │ ❎ │ ╭───┬───╮ │
│   │    │ │ 0 │ 1 │ │
│   │    │ │ 1 │ 2 │ │
│   │    │ ╰───┴───╯ │
╰───┴────┴───────────╯

```
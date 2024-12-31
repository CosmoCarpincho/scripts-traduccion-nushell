---
title: panic
categories: |
  debug
version: 0.101.0
debug: |
  Causes nushell to panic.
usage: |
  Causes nushell to panic.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `panic` for [debug](/commands/categories/debug.md)

<div class='command-title'>Causes nushell to panic.</div>

## Signature

```> panic {flags} (msg)```

## Parameters

 -  `msg`: The custom message for the panic.


## Input/output types:

| input   | output  |
| ------- | ------- |
| nothing | nothing |

## Examples

Panic with a custom message
```nu
> panic 'This is a custom panic message'

```
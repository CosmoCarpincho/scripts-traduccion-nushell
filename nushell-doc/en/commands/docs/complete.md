---
title: complete
categories: |
  system
version: 0.101.0
system: |
  Capture the outputs and exit code from an external piped in command in a nushell table.
usage: |
  Capture the outputs and exit code from an external piped in command in a nushell table.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `complete` for [system](/commands/categories/system.md)

<div class='command-title'>Capture the outputs and exit code from an external piped in command in a nushell table.</div>

## Signature

```> complete {flags} ```


## Input/output types:

| input | output |
| ----- | ------ |
| any   | record |

## Examples

Run the external command to completion, capturing stdout, stderr, and exit_code
```nu
> ^external arg1 | complete

```

## Notes
In order to capture stdout, stderr, and exit_code, externally piped in commands need to be wrapped with `do`
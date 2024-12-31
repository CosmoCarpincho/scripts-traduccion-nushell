---
title: hide
categories: |
  core
version: 0.101.0
core: |
  Hide definitions in the current scope.
usage: |
  Hide definitions in the current scope.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `hide` for [core](/commands/categories/core.md)

<div class='command-title'>Hide definitions in the current scope.</div>

## Signature

```> hide {flags} (module) (members)```

## Parameters

 -  `module`: Module or module file.
 -  `members`: Which members of the module to import.


## Input/output types:

| input   | output  |
| ------- | ------- |
| nothing | nothing |

## Examples

Hide the alias just defined
```nu
> alias lll = ls -l; hide lll

```

Hide a custom command
```nu
> def say-hi [] { echo 'Hi!' }; hide say-hi

```

## Notes
Definitions are hidden by priority: First aliases, then custom commands.

This command is a parser keyword. For details, check:
  https://www.nushell.sh/book/thinking_in_nu.html
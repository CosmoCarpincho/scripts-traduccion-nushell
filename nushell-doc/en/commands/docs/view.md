---
title: view
categories: |
  debug
version: 0.101.0
debug: |
  Various commands for viewing debug information.
usage: |
  Various commands for viewing debug information.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `view` for [debug](/commands/categories/debug.md)

<div class='command-title'>Various commands for viewing debug information.</div>

## Signature

```> view {flags} ```


## Input/output types:

| input   | output |
| ------- | ------ |
| nothing | string |

## Notes
You must use one of the following subcommands. Using this command as-is will only produce this help message.

## Subcommands:

| name                                           | description                                                 | type     |
| ---------------------------------------------- | ----------------------------------------------------------- | -------- |
| [`view blocks`](/commands/docs/view_blocks.md) | View the blocks registered in nushell's EngineState memory. | built-in |
| [`view files`](/commands/docs/view_files.md)   | View the files registered in nushell's EngineState memory.  | built-in |
| [`view ir`](/commands/docs/view_ir.md)         | View the compiled IR code for a block of code.              | built-in |
| [`view source`](/commands/docs/view_source.md) | View a block, module, or a definition.                      | built-in |
| [`view span`](/commands/docs/view_span.md)     | View the contents of a span.                                | built-in |
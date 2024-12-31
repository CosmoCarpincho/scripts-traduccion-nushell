---
title: keybindings
categories: |
  platform
version: 0.101.0
platform: |
  Keybindings related commands.
usage: |
  Keybindings related commands.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `keybindings` for [platform](/commands/categories/platform.md)

<div class='command-title'>Keybindings related commands.</div>

## Signature

```> keybindings {flags} ```


## Input/output types:

| input   | output |
| ------- | ------ |
| nothing | string |

## Notes
You must use one of the following subcommands. Using this command as-is will only produce this help message.

For more information on input and keybindings, check:
  https://www.nushell.sh/book/line_editor.html

## Subcommands:

| name                                                           | description                                                    | type     |
| -------------------------------------------------------------- | -------------------------------------------------------------- | -------- |
| [`keybindings default`](/commands/docs/keybindings_default.md) | List default keybindings.                                      | built-in |
| [`keybindings list`](/commands/docs/keybindings_list.md)       | List available options that can be used to create keybindings. | built-in |
| [`keybindings listen`](/commands/docs/keybindings_listen.md)   | Get input from the user.                                       | built-in |
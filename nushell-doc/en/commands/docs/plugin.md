---
title: plugin
categories: |
  plugin
version: 0.101.0
plugin: |
  Commands for managing plugins.
usage: |
  Commands for managing plugins.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `plugin` for [plugin](/commands/categories/plugin.md)

<div class='command-title'>Commands for managing plugins.</div>

## Signature

```> plugin {flags} ```


## Input/output types:

| input   | output  |
| ------- | ------- |
| nothing | nothing |

## Examples

Run the `nu_plugin_inc` plugin from the current directory and install its signatures.
```nu
> plugin add nu_plugin_inc

```

Load (or reload) the `inc` plugin from the plugin registry file and put its
commands in scope. The plugin must already be in the registry file at parse
time.
```nu
> plugin use inc

```

List installed plugins
```nu
> plugin list

```

Stop the plugin named `inc`.
```nu
> plugin stop inc

```

Remove the installed signatures for the `inc` plugin.
```nu
> plugin rm inc

```


## Subcommands:

| name                                           | description                                             | type     |
| ---------------------------------------------- | ------------------------------------------------------- | -------- |
| [`plugin add`](/commands/docs/plugin_add.md)   | Add a plugin to the plugin registry file.               | built-in |
| [`plugin list`](/commands/docs/plugin_list.md) | List loaded and installed plugins.                      | built-in |
| [`plugin rm`](/commands/docs/plugin_rm.md)     | Remove a plugin from the plugin registry file.          | built-in |
| [`plugin stop`](/commands/docs/plugin_stop.md) | Stop an installed plugin if it was running.             | built-in |
| [`plugin use`](/commands/docs/plugin_use.md)   | Load a plugin from the plugin registry file into scope. | keyword  |
---
title: nu-check
categories: |
  strings
version: 0.101.0
strings: |
  Validate and parse input content.
usage: |
  Validate and parse input content.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `nu-check` for [strings](/commands/categories/strings.md)

<div class='command-title'>Validate and parse input content.</div>

## Signature

```> nu-check {flags} (path)```

## Flags

 -  `--as-module, -m`: Parse content as module
 -  `--debug, -d`: Show error messages

## Parameters

 -  `path`: File path to parse.


## Input/output types:

| input     | output |
| --------- | ------ |
| list\<any\> | bool   |
| string    | bool   |
## Examples

Parse a input file as script(Default)
```nu
> nu-check script.nu

```

Parse a input file as module
```nu
> nu-check --as-module module.nu

```

Parse a input file by showing error message
```nu
> nu-check --debug script.nu

```

Parse a byte stream as script by showing error message
```nu
> open foo.nu | nu-check --debug script.nu

```

Parse an internal stream as module by showing error message
```nu
> open module.nu | lines | nu-check --debug --as-module module.nu

```

Parse a string as script
```nu
> $'two(char nl)lines' | nu-check

```

Heuristically parse which begins with script first, if it sees a failure, try module afterwards
```nu
> nu-check -a script.nu

```

Heuristically parse by showing error message
```nu
> open foo.nu | lines | nu-check --all --debug

```
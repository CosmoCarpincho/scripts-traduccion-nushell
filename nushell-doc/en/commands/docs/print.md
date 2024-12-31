---
title: print
categories: |
  strings
version: 0.101.0
strings: |
  Print the given values to stdout.
usage: |
  Print the given values to stdout.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `print` for [strings](/commands/categories/strings.md)

<div class='command-title'>Print the given values to stdout.</div>

## Signature

```> print {flags} ...rest```

## Flags

 -  `--no-newline, -n`: print without inserting a newline for the line ending
 -  `--stderr, -e`: print to stderr instead of stdout
 -  `--raw, -r`: print without formatting (including binary data)

## Parameters

 -  `...rest`: the values to print


## Input/output types:

| input   | output  |
| ------- | ------- |
| any     | nothing |
| nothing | nothing |
## Examples

Print 'hello world'
```nu
> print "hello world"

```

Print the sum of 2 and 3
```nu
> print (2 + 3)

```

Print 'ABC' from binary data
```nu
> 0x[41 42 43] | print --raw

```

## Notes
Unlike `echo`, this command does not return any value (`print | describe` will return "nothing").
Since this command has no output, there is no point in piping it with other commands.

`print` may be used inside blocks of code (e.g.: hooks) to display text during execution without interfering with the pipeline.
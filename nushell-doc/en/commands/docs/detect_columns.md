---
title: detect columns
categories: |
  strings
version: 0.101.0
strings: |
  Attempt to automatically split text into multiple columns.
usage: |
  Attempt to automatically split text into multiple columns.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `detect columns` for [strings](/commands/categories/strings.md)

<div class='command-title'>Attempt to automatically split text into multiple columns.</div>

## Signature

```> detect columns {flags} ```

## Flags

 -  `--skip, -s {int}`: number of rows to skip before detecting
 -  `--no-headers, -n`: don't detect headers
 -  `--combine-columns, -c {range}`: columns to be combined; listed as a range
 -  `--guess`: detect columns by guessing width, it may be useful if default one doesn't work


## Input/output types:

| input  | output |
| ------ | ------ |
| string | table  |

## Examples

use --guess if you find default algorithm not working
```nu
>
'Filesystem     1K-blocks      Used Available Use% Mounted on
none             8150224         4   8150220   1% /mnt/c' | detect columns --guess
╭───┬────────────┬───────────┬──────┬───────────┬──────┬────────────╮
│ # │ Filesystem │ 1K-blocks │ Used │ Available │ Use% │ Mounted on │
├───┼────────────┼───────────┼──────┼───────────┼──────┼────────────┤
│ 0 │ none       │ 8150224   │ 4    │ 8150220   │ 1%   │ /mnt/c     │
╰───┴────────────┴───────────┴──────┴───────────┴──────┴────────────╯

```

detect columns with no headers
```nu
> 'a b c' | detect columns  --no-headers
╭───┬─────────┬─────────┬─────────╮
│ # │ column0 │ column1 │ column2 │
├───┼─────────┼─────────┼─────────┤
│ 0 │ a       │ b       │ c       │
╰───┴─────────┴─────────┴─────────╯

```


```nu
> $'c1 c2 c3 c4 c5(char nl)a b c d e' | detect columns --combine-columns 0..1

```

Splits a multi-line string into columns with headers detected
```nu
> $'c1 c2 c3 c4 c5(char nl)a b c d e' | detect columns --combine-columns -2..-1

```

Splits a multi-line string into columns with headers detected
```nu
> $'c1 c2 c3 c4 c5(char nl)a b c d e' | detect columns --combine-columns 2..

```

Parse external ls command and combine columns for datetime
```nu
> ^ls -lh | detect columns --no-headers --skip 1 --combine-columns 5..7

```
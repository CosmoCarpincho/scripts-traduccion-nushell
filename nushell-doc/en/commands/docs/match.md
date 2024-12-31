---
title: match
categories: |
  core
version: 0.101.0
core: |
  Conditionally run a block on a matched value.
usage: |
  Conditionally run a block on a matched value.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `match` for [core](/commands/categories/core.md)

<div class='command-title'>Conditionally run a block on a matched value.</div>

## Signature

```> match {flags} (value) (match_block)```

## Parameters

 -  `value`: Value to check.
 -  `match_block`: Block to run if check succeeds.


## Input/output types:

| input | output |
| ----- | ------ |
| any   | any    |

## Examples

Match on a value in range
```nu
> match 3 { 1..10 => 'yes!' }
yes!
```

Match on a field in a record
```nu
> match {a: 100} { {a: $my_value} => { $my_value } }
100
```

Match with a catch-all
```nu
> match 3 { 1 => { 'yes!' }, _ => { 'no!' } }
no!
```

Match against a list
```nu
> match [1, 2, 3] { [$a, $b, $c] => { $a + $b + $c }, _ => 0 }
6
```

Match against pipeline input
```nu
> {a: {b: 3}} | match $in {{a: { $b }} => ($b + 10) }
13
```

Match with a guard
```nu
> match [1 2 3] {
        [$x, ..$y] if $x == 1 => { 'good list' },
        _ => { 'not a very good list' }
    }

good list
```

## Notes
This command is a parser keyword. For details, check:
  https://www.nushell.sh/book/thinking_in_nu.html
---
title: skip until
categories: |
  filters
version: 0.101.0
filters: |
  Skip elements of the input until a predicate is true.
usage: |
  Skip elements of the input until a predicate is true.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `skip until` for [filters](/commands/categories/filters.md)

<div class='command-title'>Skip elements of the input until a predicate is true.</div>

## Signature

```> skip until {flags} (predicate)```

## Parameters

 -  `predicate`: The predicate that skipped element must not match.


## Input/output types:

| input     | output    |
| --------- | --------- |
| list\<any\> | list\<any\> |
| table     | table     |
## Examples

Skip until the element is positive
```nu
> [-2 0 2 -1] | skip until {|x| $x > 0 }
╭───┬────╮
│ 0 │  2 │
│ 1 │ -1 │
╰───┴────╯

```

Skip until the element is positive using stored condition
```nu
> let cond = {|x| $x > 0 }; [-2 0 2 -1] | skip until $cond
╭───┬────╮
│ 0 │  2 │
│ 1 │ -1 │
╰───┴────╯

```

Skip until the field value is positive
```nu
> [{a: -2} {a: 0} {a: 2} {a: -1}] | skip until {|x| $x.a > 0 }
╭───┬────╮
│ # │ a  │
├───┼────┤
│ 0 │  2 │
│ 1 │ -1 │
╰───┴────╯

```
---
title: random int
categories: |
  random
version: 0.101.0
random: |
  Generate a random integer [min..max].
usage: |
  Generate a random integer [min..max].
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `random int` for [random](/commands/categories/random.md)

<div class='command-title'>Generate a random integer [min..max].</div>

## Signature

```> random int {flags} (range)```

## Parameters

 -  `range`: Range of potential values, inclusive of both start and end values.


## Input/output types:

| input   | output |
| ------- | ------ |
| nothing | int    |

## Examples

Generate a non-negative random integer
```nu
> random int

```

Generate a random integer between 0 (inclusive) and 500 (inclusive)
```nu
> random int ..500

```

Generate a random integer greater than or equal to 100000
```nu
> random int 100000..

```

Generate a random integer between -10 (inclusive) and 10 (inclusive)
```nu
> random int (-10)..10

```
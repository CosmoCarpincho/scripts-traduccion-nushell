---
title: math max
categories: |
  math
version: 0.101.0
math: |
  Returns the maximum of a list of values, or of columns in a table.
usage: |
  Returns the maximum of a list of values, or of columns in a table.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `math max` for [math](/commands/categories/math.md)

<div class='command-title'>Returns the maximum of a list of values, or of columns in a table.</div>

## Signature

```> math max {flags} ```


## Input/output types:

| input          | output   |
| -------------- | -------- |
| list\<any\>      | any      |
| list\<duration\> | duration |
| list\<filesize\> | filesize |
| list\<number\>   | number   |
| range          | number   |
| record         | record   |
| table          | record   |
## Examples

Find the maximum of a list of numbers
```nu
> [-50 100 25] | math max
100
```

Find the maxima of the columns of a table
```nu
> [{a: 1 b: 3} {a: 2 b: -1}] | math max
╭───┬───╮
│ a │ 2 │
│ b │ 3 │
╰───┴───╯
```

Find the maximum of a list of dates
```nu
> [2022-02-02 2022-12-30 2012-12-12] | math max
Fri, 30 Dec 2022 00:00:00 +0000 (2 years ago)
```
---
title: math sinh
categories: |
  math
version: 0.101.0
math: |
  Returns the hyperbolic sine of the number.
usage: |
  Returns the hyperbolic sine of the number.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `math sinh` for [math](/commands/categories/math.md)

<div class='command-title'>Returns the hyperbolic sine of the number.</div>

## Signature

```> math sinh {flags} ```


## Input/output types:

| input        | output      |
| ------------ | ----------- |
| list\<number\> | list\<float\> |
| number       | float       |
## Examples

Apply the hyperbolic sine to 1
```nu
> 1 | math sinh
1.1752011936438014
```
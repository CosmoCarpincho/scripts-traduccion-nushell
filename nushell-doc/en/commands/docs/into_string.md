---
title: into string
categories: |
  conversions
version: 0.101.0
conversions: |
  Convert value to string.
usage: |
  Convert value to string.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `into string` for [conversions](/commands/categories/conversions.md)

<div class='command-title'>Convert value to string.</div>

## Signature

```> into string {flags} ...rest```

## Flags

 -  `--decimals, -d {int}`: decimal digits to which to round

## Parameters

 -  `...rest`: For a data structure input, convert data at the given cell paths.


## Input/output types:

| input     | output       |
| --------- | ------------ |
| binary    | string       |
| bool      | string       |
| datetime  | string       |
| duration  | string       |
| filesize  | string       |
| glob      | string       |
| int       | string       |
| list\<any\> | list\<string\> |
| number    | string       |
| record    | record       |
| string    | string       |
| table     | table        |
## Examples

convert int to string and append three decimal places
```nu
> 5 | into string --decimals 3
5.000
```

convert float to string and round to nearest integer
```nu
> 1.7 | into string --decimals 0
2
```

convert float to string
```nu
> 1.7 | into string --decimals 1
1.7
```

convert float to string and limit to 2 decimals
```nu
> 1.734 | into string --decimals 2
1.73
```

convert float to string
```nu
> 4.3 | into string
4.3
```

convert string to string
```nu
> '1234' | into string
1234
```

convert boolean to string
```nu
> true | into string
true
```

convert date to string
```nu
> '2020-10-10 10:00:00 +02:00' | into datetime | into string
Sat Oct 10 10:00:00 2020
```

convert filepath to string
```nu
> ls Cargo.toml | get name | into string

```

convert filesize to string
```nu
> 1KiB | into string
1.0 KiB
```

convert duration to string
```nu
> 9day | into string
1wk 2day
```
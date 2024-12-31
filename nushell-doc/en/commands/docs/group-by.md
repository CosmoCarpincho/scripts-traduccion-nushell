---
title: group-by
categories: |
  filters
version: 0.101.0
filters: |
  Splits a list or table into groups, and returns a record containing those groups.
usage: |
  Splits a list or table into groups, and returns a record containing those groups.
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `group-by` for [filters](/commands/categories/filters.md)

<div class='command-title'>Splits a list or table into groups, and returns a record containing those groups.</div>

## Signature

```> group-by {flags} ...rest```

## Flags

 -  `--to-table`: Return a table with "groups" and "items" columns

## Parameters

 -  `...rest`: The path to the column to group on.


## Input/output types:

| input     | output |
| --------- | ------ |
| list\<any\> | any    |

## Examples

Group items by the "type" column's values
```nu
> ls | group-by type

```

Group items by the "foo" column's values, ignoring records without a "foo" column
```nu
> open cool.json | group-by foo?

```

Group using a block which is evaluated against each input value
```nu
> [foo.txt bar.csv baz.txt] | group-by { path parse | get extension }
╭─────┬─────────────────╮
│     │ ╭───┬─────────╮ │
│ txt │ │ 0 │ foo.txt │ │
│     │ │ 1 │ baz.txt │ │
│     │ ╰───┴─────────╯ │
│     │ ╭───┬─────────╮ │
│ csv │ │ 0 │ bar.csv │ │
│     │ ╰───┴─────────╯ │
╰─────┴─────────────────╯
```

You can also group by raw values by leaving out the argument
```nu
> ['1' '3' '1' '3' '2' '1' '1'] | group-by
╭───┬───────────╮
│   │ ╭───┬───╮ │
│ 1 │ │ 0 │ 1 │ │
│   │ │ 1 │ 1 │ │
│   │ │ 2 │ 1 │ │
│   │ │ 3 │ 1 │ │
│   │ ╰───┴───╯ │
│   │ ╭───┬───╮ │
│ 3 │ │ 0 │ 3 │ │
│   │ │ 1 │ 3 │ │
│   │ ╰───┴───╯ │
│   │ ╭───┬───╮ │
│ 2 │ │ 0 │ 2 │ │
│   │ ╰───┴───╯ │
╰───┴───────────╯
```

You can also output a table instead of a record
```nu
> ['1' '3' '1' '3' '2' '1' '1'] | group-by --to-table
╭───┬───────┬───────────╮
│ # │ group │   items   │
├───┼───────┼───────────┤
│ 0 │ 1     │ ╭───┬───╮ │
│   │       │ │ 0 │ 1 │ │
│   │       │ │ 1 │ 1 │ │
│   │       │ │ 2 │ 1 │ │
│   │       │ │ 3 │ 1 │ │
│   │       │ ╰───┴───╯ │
│ 1 │ 3     │ ╭───┬───╮ │
│   │       │ │ 0 │ 3 │ │
│   │       │ │ 1 │ 3 │ │
│   │       │ ╰───┴───╯ │
│ 2 │ 2     │ ╭───┬───╮ │
│   │       │ │ 0 │ 2 │ │
│   │       │ ╰───┴───╯ │
╰───┴───────┴───────────╯

```

Group bools, whether they are strings or actual bools
```nu
> [true "true" false "false"] | group-by
╭───────┬───────────────╮
│       │ ╭───┬──────╮  │
│ true  │ │ 0 │ true │  │
│       │ │ 1 │ true │  │
│       │ ╰───┴──────╯  │
│       │ ╭───┬───────╮ │
│ false │ │ 0 │ false │ │
│       │ │ 1 │ false │ │
│       │ ╰───┴───────╯ │
╰───────┴───────────────╯
```

Group items by multiple columns' values
```nu
> [
        [name, lang, year];
        [andres, rb, "2019"],
        [jt, rs, "2019"],
        [storm, rs, "2021"]
    ]
    | group-by lang year
╭────┬─────────────────────────────────────────╮
│    │ ╭──────┬──────────────────────────────╮ │
│ rb │ │      │ ╭───┬────────┬──────┬──────╮ │ │
│    │ │ 2019 │ │ # │  name  │ lang │ year │ │ │
│    │ │      │ ├───┼────────┼──────┼──────┤ │ │
│    │ │      │ │ 0 │ andres │ rb   │ 2019 │ │ │
│    │ │      │ ╰───┴────────┴──────┴──────╯ │ │
│    │ ╰──────┴──────────────────────────────╯ │
│    │ ╭──────┬─────────────────────────────╮  │
│ rs │ │      │ ╭───┬──────┬──────┬──────╮  │  │
│    │ │ 2019 │ │ # │ name │ lang │ year │  │  │
│    │ │      │ ├───┼──────┼──────┼──────┤  │  │
│    │ │      │ │ 0 │ jt   │ rs   │ 2019 │  │  │
│    │ │      │ ╰───┴──────┴──────┴──────╯  │  │
│    │ │      │ ╭───┬───────┬──────┬──────╮ │  │
│    │ │ 2021 │ │ # │ name  │ lang │ year │ │  │
│    │ │      │ ├───┼───────┼──────┼──────┤ │  │
│    │ │      │ │ 0 │ storm │ rs   │ 2021 │ │  │
│    │ │      │ ╰───┴───────┴──────┴──────╯ │  │
│    │ ╰──────┴─────────────────────────────╯  │
╰────┴─────────────────────────────────────────╯
```

Group items by multiple columns' values
```nu
> [
        [name, lang, year];
        [andres, rb, "2019"],
        [jt, rs, "2019"],
        [storm, rs, "2021"]
    ]
    | group-by lang year --to-table
╭───┬──────┬──────┬──────────────────────────────╮
│ # │ lang │ year │            items             │
├───┼──────┼──────┼──────────────────────────────┤
│ 0 │ rb   │ 2019 │ ╭───┬────────┬──────┬──────╮ │
│   │      │      │ │ # │  name  │ lang │ year │ │
│   │      │      │ ├───┼────────┼──────┼──────┤ │
│   │      │      │ │ 0 │ andres │ rb   │ 2019 │ │
│   │      │      │ ╰───┴────────┴──────┴──────╯ │
│ 1 │ rs   │ 2019 │ ╭───┬──────┬──────┬──────╮   │
│   │      │      │ │ # │ name │ lang │ year │   │
│   │      │      │ ├───┼──────┼──────┼──────┤   │
│   │      │      │ │ 0 │ jt   │ rs   │ 2019 │   │
│   │      │      │ ╰───┴──────┴──────┴──────╯   │
│ 2 │ rs   │ 2021 │ ╭───┬───────┬──────┬──────╮  │
│   │      │      │ │ # │ name  │ lang │ year │  │
│   │      │      │ ├───┼───────┼──────┼──────┤  │
│   │      │      │ │ 0 │ storm │ rs   │ 2021 │  │
│   │      │      │ ╰───┴───────┴──────┴──────╯  │
╰───┴──────┴──────┴──────────────────────────────╯

```

## Notes
the group-by command makes some assumptions:
    - if the input data is not a string, the grouper will convert the key to string but the values will remain in their original format. e.g. with bools, "true" and true would be in the same group (see example).
    - datetime is formatted based on your configuration setting. use `format date` to change the format.
    - filesize is formatted based on your configuration setting. use `format filesize` to change the format.
    - some nushell values are not supported, such as closures.
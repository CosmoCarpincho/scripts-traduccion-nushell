---
title: path type
categories: |
  path
version: 0.101.0
path: |
  Get the type of the object a path refers to (e.g., file, dir, symlink).
usage: |
  Get the type of the object a path refers to (e.g., file, dir, symlink).
---
<!-- This file is automatically generated. Please edit the command in https://github.com/nushell/nushell instead. -->

# `path type` for [path](/commands/categories/path.md)

<div class='command-title'>Get the type of the object a path refers to (e.g., file, dir, symlink).</div>

## Signature

```> path type {flags} ```


## Input/output types:

| input        | output       |
| ------------ | ------------ |
| list\<string\> | list\<string\> |
| string       | string       |
## Examples

Show type of a filepath
```nu
> '.' | path type
dir
```

Show type of a filepaths in a list
```nu
> ls | get name | path type

```

## Notes
This checks the file system to confirm the path's object type.
If the path does not exist, null will be returned.
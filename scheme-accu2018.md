---
title: Scheme Lisp - Feel the Cool
author: Andy Balaam
header-includes: \usepackage[scale=2]{ccicons}
fontsize: 14pt
---


foo

<pre>
> (<span style="color:red;">define</span> foo 3)
</pre>

<span style="color:red;">define</span>

define

## Intro

Scheme is

* simple,
* weird, and
* cool

## Simple by design

History:

* Designed for teaching
* Based on Lambda Calculus
* MIT cs curriculum, SICP

## Simple to try

```bash
$ sudo apt install racket
$ mzscheme
>
```

## Simple to use

Scheme has:

* One thing you can do
* One data structure

Both are actually the same.

## Simple syntax

```scheme
(operator operand1 operand2 ...)
```

## Simple expressions

```scheme
> (+ 3 4)
```
. . .
```scheme
7
```
. . .
```scheme
> (* 3 4)
```
. . .
```scheme
12
```
. . .
```scheme
> (+ 5 (* 2 2))
```
. . .
```scheme
9
```

## Simple definitions

```scheme
> (define foo 3)
```
. . .
```scheme
> foo
```
. . .
```scheme
3
```
. . .
```scheme
> (* foo 4)
```
. . .
```scheme
12
```

## Simple functions


. . .
```scheme
> foo
```
. . .
```scheme
3
```
. . .
```scheme
> (* foo 4)
```
. . .
```scheme
12
```

## Weird

- Pass functions as arguments
- Recursion
- Data/code duality
- set! etc.

## Cool

- duck typing (generics)
- generating code
- Metaprogramming is just programming
- macros
- Build your own language
- Metasyntactic evaluator

## Questions

[Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)

\ccbysa

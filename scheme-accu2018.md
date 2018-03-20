---
title: Scheme Lisp - Feel the Cool
author: Andy Balaam, OpenMarket \newline \ccbysa
rights: Copyright 2018 Andy Balaam, CC BY-SA
header-includes:
  - \usepackage[scale=1]{ccicons}
  - \usepackage{listings}
  - \lstset{basicstyle=\ttfamily}
  - \newcommand{\CodeEmphasis}[1]{\textcolor{red}{\textit{#1}}}
fontsize: 14pt
---

## Intro {.fragile}

```{emphasize=1:3-3:5}
define
```

Scheme is

* simple,
* weird, and
* cool

## Simple by design

History:

* Designed for teaching
* Based on Lambda Calculus^[Alonzo Church, 1930]
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

## Simple expressions

```scheme
> (+ 3 4)
7
```

## Simple expressions

```scheme
> (+ 3 4)
7
> (* 3 4)
```

## Simple expressions

```scheme
> (+ 3 4)
7
> (* 3 4)
12
```

## Simple expressions

```scheme
> (+ 3 4)
7
> (* 3 4)
12
> (+ 5 (* 2 2))
```

## Simple expressions

```scheme
> (+ 3 4)
7
> (* 3 4)
12
> (+ 5 (* 2 2))
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

This presentation is available under [cc by-sa](http://creativecommons.org/licenses/by-sa/4.0/) at [github.com/andybalaam/videos-scheme-accu2018](https://github.com/andybalaam/videos-scheme-accu2018).

\center \ccbysa

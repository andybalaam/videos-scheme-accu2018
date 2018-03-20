---
title: Scheme Lisp - Feel the Cool
author: Andy Balaam, OpenMarket
header-includes:
  - \usepackage[scale=2]{ccicons}
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

## Simple by design {.fragile}

History:

* Designed for teaching
* Based on Lambda Calculus
* MIT cs curriculum, SICP

## Simple to try {.fragile}

```bash
$ sudo apt install racket
$ mzscheme
>
```

## Simple to use {.fragile}

Scheme has:

* One thing you can do
* One data structure

Both are actually the same.

## Simple syntax {.fragile}

```scheme
(operator operand1 operand2 ...)
```

## Simple expressions {.fragile}

```scheme
> (+ 3 4)
```

## Simple expressions {.fragile}

```scheme
> (+ 3 4)
7
```

## Simple expressions {.fragile}

```scheme
> (+ 3 4)
7
> (* 3 4)
```

## Simple expressions {.fragile}

```scheme
> (+ 3 4)
7
> (* 3 4)
12
```

## Simple expressions {.fragile}

```scheme
> (+ 3 4)
7
> (* 3 4)
12
> (+ 5 (* 2 2))
```

## Simple expressions {.fragile}

```scheme
> (+ 3 4)
7
> (* 3 4)
12
> (+ 5 (* 2 2))
9
```

## Simple definitions {.fragile}

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

## Simple functions {.fragile}


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

## Weird {.fragile}

- Pass functions as arguments
- Recursion
- Data/code duality
- set! etc.

## Cool {.fragile}

- duck typing (generics)
- generating code
- Metaprogramming is just programming
- macros
- Build your own language
- Metasyntactic evaluator

## Questions

[Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)

\ccbysa

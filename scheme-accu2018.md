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

* Designed for teaching^[by Sussman and Steele, 1970s]
* Used as the basis of the Computer Science course at MIT
* Based on Lambda Calculus^[Alonzo Church, 1930]

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

## Simple definitions

```scheme
> (define foo 3)

> foo
```

## Simple definitions

```scheme
> (define foo 3)

> foo
3
```

## Simple definitions

```scheme
> (define foo 3)

> foo
3
> (* foo 4)
```

## Simple definitions

```scheme
> (define foo 3)

> foo
3
> (* foo 4)
12
```

## Simple functions

```scheme
> (define (square x) (* x x))
```

## Simple functions

```scheme
> (define (square x) (* x x))

> (square 4)
```

## Simple functions

```scheme
> (define (square x) (* x x))

> (square 4)
16
```

## Simple functions

```scheme
> (define (square x) (* x x))

> (square 4)
16
> (+ (square 2) (square 3))

```
## Simple functions

```scheme
> (define (square x) (* x x))

> (square 4)
16
> (+ (square 2) (square 3))
13
```

## Simple flow control

```scheme
(define (abs x)
        (if (< x 0)
            (- x)
            x))

> (abs -3)
3
> (abs 3)
3
```

## Simple data structure

```scheme
> (list 9 3 5)
```

## Simple data structure

```scheme
> (list 9 3 5)
(9 3 5)
```

## Simple data structure

```scheme
> (list 9 3 5)
(9 3 5)
> (sort (list 9 3 5))
```

## Simple data structure

```scheme
> (list 9 3 5)
(9 3 5)
> (sort (list 9 3 5))
(3 5 9)
```

## Simple data structure

```scheme
> (list 9 3 5)
(9 3 5)
> (sort (list 9 3 5))
(3 5 9)
> (length (list 3 2))
```

## Simple data structure

```scheme
> (list 9 3 5)
(9 3 5)
> (sort (list 9 3 5))
(3 5 9)
> (length (list 3 2))
2
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
* `?`, `-` and `!` in names

## Cool reading

* *Structure and Interpretation of Computer
  Programs*^[<https://mitpress.mit.edu/sicp/full-text/book/book.html>] changed
  my life

## Questions

This presentation is available under [cc by-sa](http://creativecommons.org/licenses/by-sa/4.0/) at [github.com/andybalaam/videos-scheme-accu2018](https://github.com/andybalaam/videos-scheme-accu2018).

\center \ccbysa

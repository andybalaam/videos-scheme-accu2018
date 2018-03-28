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

## Intro

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
```

## Simple flow control

```scheme
(define (abs x)
        (if (< x 0)
            (- x)
            x))

> (abs -3)
```

## Simple flow control

```scheme
(define (abs x)
        (if (< x 0)
            (- x)
            x))

> (abs -3)
3
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
> (sort (list 9 3 5) <)
```

## Simple data structure

```scheme
> (list 9 3 5)
(9 3 5)
> (sort (list 9 3 5) <)
(3 5 9)
```

## Simple data structure

```scheme
> (list 9 3 5)
(9 3 5)
> (sort (list 9 3 5) <)
(3 5 9)
> (length (list 3 2))
```

## Simple data structure

```scheme
> (list 9 3 5)
(9 3 5)
> (sort (list 9 3 5) <)
(3 5 9)
> (length (list 3 2))
2
```

## Weird

* Building lists from pairs
* Recursion for everything
* Passing functions into functions
* Data/code duality

## Weird lists

```scheme
> (define x (list 1 2 3))
```

## Weird lists

```scheme
> (define x (list 1 2 3))

> (car x)
```

## Weird lists

```scheme
> (define x (list 1 2 3))

> (car x)
1
```

## Weird lists

```scheme
> (define x (list 1 2 3))

> (car x)
1
> (cdr x)
```

## Weird lists

```scheme
> (define x (list 1 2 3))

> (car x)
1
> (cdr x)
(2 3)
```

## Weird pairs

```scheme
> (cons "a" "b")
```

## Weird pairs

```scheme
> (cons "a" "b")
("a" . "b")
```

## Weird pairs

```scheme
> (cons "a" "b")
("a" . "b")
> (cons (cons 5 6) 7)
```

## Weird pairs

```scheme
> (cons "a" "b")
("a" . "b")
> (cons (cons 5 6) 7)
((5 . 6) . 7)
```

## Weird pairs

```scheme
> (cons "a" "b")
("a" . "b")
> (cons (cons 5 6) 7)
((5 . 6) . 7)
> (define p (cons 1 2))
```

## Weird pairs

```scheme
> (cons "a" "b")
("a" . "b")
> (cons (cons 5 6) 7)
((5 . 6) . 7)
> (define p (cons 1 2))

> (car p)
```

## Weird pairs

```scheme
> (cons "a" "b")
("a" . "b")
> (cons (cons 5 6) 7)
((5 . 6) . 7)
> (define p (cons 1 2))

> (car p)
1
```

## Weird pairs

```scheme
> (cons "a" "b")
("a" . "b")
> (cons (cons 5 6) 7)
((5 . 6) . 7)
> (define p (cons 1 2))

> (car p)
1
> (cdr p)
```

## Weird pairs

```scheme
> (cons "a" "b")
("a" . "b")
> (cons (cons 5 6) 7)
((5 . 6) . 7)
> (define p (cons 1 2))

> (car p)
1
> (cdr p)
2
```

## Weird list-building

```scheme
> null
```

## Weird list-building

```scheme
> null
()
```

## Weird list-building

```scheme
> null
()
> (cons 2 null)
```

## Weird list-building

```scheme
> null
()
> (cons 2 null)
(2)
```

## Weird list-building

```scheme
> null
()
> (cons 2 null)
(2)
> (cons 1 (cons 2 null))
```

## Weird list-building

```scheme
> null
()
> (cons 2 null)
(2)
> (cons 1 (cons 2 null))
(1 2)
```

## Weird list-building

```scheme
> null
()
> (cons 2 null)
(2)
> (cons 1 (cons 2 null))
(1 2)
> (list 1 2)
```

## Weird list-building

```scheme
> null
()
> (cons 2 null)
(2)
> (cons 1 (cons 2 null))
(1 2)
> (list 1 2)
(1 2)
```

## Weird lists made of pairs

![](list-of-pairs.svg)\ 

```scheme
(list 1 2 3)
```

## Weirdly named functions

* `cons` sticks things together
* `car` gives you the first thing
* `cdr` gives you the second thing

## Weirdly named functions

* `cons` sticks things together
* `car` gives you the "head"
* `cdr` gives you the "tail"

## Weirdly named functions

* So `cdadar`'s meaning should be obvious

## Weirdly named functions

* So `cdadar`'s meaning should be obvious
* Right?

## Weirdly named functions {.fragile}

From the manual:

```{emphasize=1:3-1:6,2:11-2:11,2:16-2:16,2:21-2:21,2:26-2:26}
(cdaddr v)
Returns (cdr (car (cdr (cdr v))))
```

## Weird recursion

```scheme
(define (sum vs)
        (if (= 1 (length vs))
            (car vs)
            (+ (car vs)
               (sum (cdr vs)))))
```

## Weird recursion

```scheme
(define (sum vs)
        (if (= 1 (length vs))
            (car vs)
            (+ (car vs)
               (sum (cdr vs)))))

> (sum (list 5 6 7))
```


## Weird recursion

```scheme
(define (sum vs)
        (if (= 1 (length vs))
            (car vs)
            (+ (car vs)
               (sum (cdr vs)))))

> (sum (list 5 6 7))
18
```

## Weird recursion {.fragile}

```{emphasize=1:10-1:12,5:17-5:19}
(define (sum vs)
        (if (= 1 (length vs))
            (car vs)
            (+ (car vs)
               (sum (cdr vs)))))
```

## Weird recursion {.fragile}

```{emphasize=3:14-3:17,5:22-5:24}
(define (sum vs)
        (if (= 1 (length vs))
            (car vs)
            (+ (car vs)
               (sum (cdr vs)))))
```

## Weird meta-functions

```scheme
(define (double value)
        (* 2 value))

(define (apply-twice fn value)
        (fn (fn value)))

> (apply-twice double 2)
```

## Weird meta-functions

```scheme
(define (double value)
        (* 2 value))

(define (apply-twice fn value)
        (fn (fn value)))

> (apply-twice double 2)
8
```

## Weird meta-functions {.fragile}

```{emphasize=1:22-1:23,2:10-2:11,2:14-2:15}
(define (apply-twice fn value)
        (fn (fn value)))
```

## Weird functions as values

```scheme
> (map double (list 3 4 5))
```

## Weird functions as values

```scheme
> (map double (list 3 4 5))
(6 8 10)
```

## Weird code as data

```scheme
> (define s (list '+ 4 7))
```

## Weird code as data

```scheme
> (define s (list '+ 4 7))
> s
```

## Weird code as data

```scheme
> (define s (list '+ 4 7))
> s
(+ 4 7)
```

## Weird code as data

```scheme
> s
(+ 4 7)
> (eval s)
```

## Weird code as data

```scheme
> s
(+ 4 7)
> (eval s)
11
```

## Weird code as data

```scheme
> (define (switchop a) (cons '* (cdr a)))
```

## Weird code as data

```scheme
> (define (switchop a) (cons '* (cdr a)))
> (define s2 (switchop s))
```

## Weird code as data

```scheme
> (define (switchop a) (cons '* (cdr a)))
> (define s2 (switchop s))
> s2
```

## Weird code as data

```scheme
> (define (switchop a) (cons '* (cdr a)))
> (define s2 (switchop s))
> s2
(* 4 7)
```

## Weird code as data

```scheme
> s2
(* 4 7)
> (eval s2)
```

## Weird code as data

```scheme
> s2
(* 4 7)
> (eval s2)
28
```

## Cool

* Better names
* Duck typing (generics)
* Metaprogramming is just programming
* Build your own language
* `?`, `-` and `!` in names

## Cool names

* These are all valid names in Scheme:

```scheme
equal?
boom!
a*b
co-ordinates
<10
+
```

This is cool.

## Cool replacement

* This works:

```scheme
> (define (+ x y) 5)
> (+ 2 2)
5
```

This is cool.

## Cool Duck typing

```scheme
> (sort (list 5 4 3 2 1) <)
(1 2 3 4 5)
> (sort (list "abc" "a" "ab") string<?)
("a" "ab" "abc")
```

## Cool things I haven't mentioned


* Cheating with `set!`

## Cool reading

* *Structure and Interpretation of Computer
  Programs*^[<https://mitpress.mit.edu/sicp/full-text/book/book.html>] changed
  my life

## Questions

This presentation is available under [cc by-sa](http://creativecommons.org/licenses/by-sa/4.0/) at [github.com/andybalaam/videos-scheme-accu2018](https://github.com/andybalaam/videos-scheme-accu2018).

\center \ccbysa

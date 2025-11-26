#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00Template.typ": *
#show: main_format

#date_header
#make_title

= Linear approximation

Remember that the linearization of a function $f$ at a point $a$ is given by
the formula
$
"Lin"(f, a)(x) = f(a) + f'(a)(x - a).
$

Approximate the following values using linearization.
- $1/sqrt(17)$
- $ln(1.07)$
- $64.01^(1/3)$
- $arccos(0.52)$

= Mean Value Theorem and Rolle's Theorem

Recall that Rolle's Theorem states that if a function $f$ is continuous on a
closed interval $[a, b]$, differentiable on the open interval, and $f(a) = f(b)$,
then there exists at least one $c$ in $(a, b)$ such that $f'(c) = 0$.

Verify Rolle's Theorem for the different functions on the given intervals.
- $f(x) = x^4 - x^2$ on $[-2, 2]$. How many values of $c$ are there such that
  $f'(c) = 0$?
- $f(x) = sin(x)$ on $[0, pi]$.
- $f(x) = x^3 - 4x + 2$ on $[0, 2]$.
- Analyze the function $g(x) = abs(x)$ on $[-2, 2]$. Does it satisfy the
  hypotheses of Rolle's Theorem on this interval? Why or why not?

Recall that the Mean Value Theorem states that if a function $f$ is continuous on
a closed interval $[a, b]$ and differentiable on the open interval $(a, b)$,
then there exists at least one $c$ in $(a, b)$ such that
$
f'(c) = (f(b) - f(a)) / (b - a).
$
This is, _there is at least one point where the instantaneous rate of change
equals the average rate of change over the interval_.

Find points satisfying the conclusion of the Mean Value Theorem for the
following functions and intervals.
- $y = 1 /x$ on $[2,8]$.
- $y = cos(x) - sin(x)$ on $[0, 2 pi]$.
- $y = x^3$ on $[-4, 5]$.
- $y = sqrt(x)$ on $[9, 25]$.
- $y = x ln(x)$ on $[1, 2]$.

= L'Hôpital's Rule

Recall that L'Hôpital's Rule states that if the limits of functions $f(x)$ and
$g(x)$ both approach $0$ or both approach $plus.minus oo$ as $x$ approaches a
point $c$ (including $plus.minus oo$), and the derivatives $f'(x)$
and $g'(x)$ are continuous near $c$ and $g'(x) != 0$ near $c$, then
$
lim_(x -> c) frac(f(x) , g(x)) = lim_(x -> c) frac(f'(x) , g'(x))
$
provided the limit on the right side exists.
This is based on the idea that we can use the linearizations of $f$ and $g$ 
near $c$ to approximate the behavior of the ratio $f(x) / g(x)$ near $c$.

Compute the following limits using L'Hôpital's Rule.
- $lim_(x -> 0) sin(x) / x$
- $lim_(x -> 0) frac(1 - cos(x) , x)$
- $lim_(x -> 2) frac(x^3 - 8, x^2 - 4)$
- $lim_(x -> 0^+) x ln(x)$
- $lim_(x -> 0) frac(e^x - x - 1, cos(x) - 1)$
- $lim_(x -> 0) 1 / sin(x) - 1 / x$
- $lim_(x -> oo) x / e^x$
- $lim_(x -> 1) frac(x^m - 1, x^n - 1)$ where $m$ and $n$ are non-zero constants.

= Newton's Method

Recall that Newton's Method is an iterative process to approximate roots of a
function $f(x)$. Starting with an initial guess $x_0$, the method uses the
formula
$
x_(n+1) = x_n - frac(f(x_n), f'(x_n))
$
to generate a sequence of approximations that converge to a root of $f(x)$.

Use Newton's Method to approximate the roots of the following functions.
- $f(x) = x^2 - 6$ starting with $x_0 = 2$.
- $f(x) = x^3 + x + 1$ starting with $x_0 = -1$.
- $f(x) = 1 - x sin(x)$ starting with $x_0 = 7$.



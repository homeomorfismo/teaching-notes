#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00Template.typ": *
#show: main_format

#date_header
#make_title

= Implicit Differentiation

_Implicit_ means that something is not stated directly.
Compare with the definition of a function: functions are often defined by _a
rule_ that gives the output for each input (on top of their domain and codomain).
For example the function $f$ defined by
$
f: RR & -> RR\
x & |-> f(x) = sqrt(1 - x^2)
$
is defined _explicitly_: if we are given an input $x$ in the domain $[-1, 1]$,
we can compute the output $f(x)$ directly by applying the rule $f(x) = sqrt(1 - x^2)$.
- If $x = 1/2$, then $f(1/2) = sqrt(1 - (1/2)^2) = sqrt(3/4) = sqrt(3)/2$.
- If $x = -1$, then $f(-1) = sqrt(1 - (-1)^2) = sqrt(0) = 0$.
- If $x = a + 2/3$, then $f(a + 2/3) = sqrt(1 - (a + 2/3)^2)$.
- If $x = g(t)$ for some function $g$, then $f(g(t)) = sqrt(1 - (g(t))^2)$, and so on.

However, not all functions are defined or given explicitly.
Sometimes, we only know the _existence_ of a _relation_ between given variables,
without knowing a formula (_a rule_) that gives the output for each input.
For example, consider the equation of a circle with radius $1$ centered at
the origin:
$
x^2 + y^2 = 1.
$
This equation defines a relation between the variables $x$ and $y$, and _may_
define $y$ as a function of $x$ (at least locally#footnote[
  We will not discuss the meaning of "locally" here; just keep in mind that
  sometimes the relation may not define a function _everywhere_.
]).
However, sometimes we are not capable of finding an explicit formula for $y$ in
terms of $x$.
In this case, we say that $y$ is defined _implicitly_ by the equation 
$x^2 + y^2 = 1$.

#block(
  title: "Implicit functions",
)[
  In general, given a function $F: RR^2 & -> RR$, we say that $y$ is defined
  _implicitly_ as a function of $x$ by the equation
  $
  F(x, y) = 0
  $
  if for each $x$ in some interval $I$, there exists a unique $y$ such that
  $
  F(x, y) = 0.
  $
  In this case, we write $y = f(x)$ for some function $f: I & -> RR$ such that
  $
  F(x, f(x)) = 0
  $
  for all $x$ in $I$.
]

The implicit function theorem (which we will not discuss here) gives conditions
on $F$ that guarantee the existence of such a function $f$.

== Concrete examples

=== The unit circle

Consider again the equation of the unit circle:
$
x^2 + y^2 = 1,
$
and assume that $y$ is defined implicitly as a function of $x$ by this
equation.
To find the derivative of $y$ with respect to $x$, we can differentiate both
sides of the equation with respect to $x$:
$
frac(dd(""),dd(x))(x^2 + y^2) = frac(dd(""),dd(x))(1).
$
Using the sum rule and the power rule on the left-hand side, and the constant
rule on the right-hand side, we get
$
2x + 2y frac(dd(y),dd(x)) = 0.
$
Note the usage of the _chain rule_ to differentiate $y^2$ with respect to
$x$: since $y$ is a function of $x$, we have to multiply the derivative of
$y^2$ with respect to $y$ (which is $2y$) by the derivative of $y$ with
respect to $x$ (which is $frac(dd(y),dd(x))$).
Solving for $frac(dd(y),dd(x))$, we get
$
frac(dd(y),dd(x)) = - frac(x, y).
$

One may verify that this is consistent with the explicit formula for $y$ in
terms of $x$:
$
y = sqrt(1 - x^2)
$
or
$
y = - sqrt(1 - x^2).
$
Differentiating either of these formulas using the chain rule yields the same
result.

=== Cubic curves and tangent lines

Consider the cubic curve defined by the equation
$
y^3 + x^2 y - x = 14.
$
Assuming that $y$ is defined implicitly as a function of $x$ by this
equation, we can differentiate both sides with respect to $x$:
$
frac(dd(""),dd(x))(y^3 + x^2 y - x) = frac(dd(""),dd(x))(14).
$
Using the sum rule, the power rule, and the product rule on the left-hand
side, and the constant rule on the right-hand side, we get
$
3y^2 frac(dd(y),dd(x)) + (2x y + x^2 frac(dd(y),dd(x))) - 1 = 0.
$
Solving for $frac(dd(y),dd(x))$, we get
$
frac(dd(y),dd(x)) = frac(1 - 2x y, 3y^2 + x^2).
$

Let's take a point on the curve, for example the point $(2, 2)$
(since $2^3 + 2^2 * 2 - 2 = 8 + 8 - 2 = 14$).
The slope of the tangent line to the curve at this point is given by
$
frac(dd(y),dd(x)) bar_(x=2, y=2) = frac(1 - 2 * 2 * 2, 3 * 2^2 + 2^2) = frac(1 - 8, 12 + 4) = frac(-7, 16).
$
The equation of the tangent line at the point $(2, 2)$ is therefore
$y - 2 = - frac(7, 16)(x - 2),$
or equivalently $y = - frac(7, 16)x + frac(32 + 14, 16) = - frac(7, 16)x + frac(46, 16).$
This line approximates the curve near the point $(2, 2)$.


= The logarithmic trick

We have discussed how to differentiate the exponential function $e^x$ and the
natural logarithm function $ln(x)$ using their definitions, but how can we
differentiate functions in different bases, such as $a^x$ for some positive
real number $a$ not equal to $e$, or $log_a(x)$ for some positive real number
not equal to $e$ and not equal to $1$?
How can we differentiate more complicated functions such as $x^x$ or
$(sin(x))^{cos(x)}$?

The _logarithmic trick_ is a technique that uses the properties of logarithms
and exponentials to simplify the differentiation of such functions.
The idea is based on the fact that the logarithm is the inverse of the
exponential function, and that logarithms can transform _products into sums_,
_powers into products_:
- $ln(a  b) = ln(a) + ln(b)$
- $ln(a^b) = b  ln(a)$
Using these properties, we can rewrite complicated functions in a form that is
easier to differentiate: all of this using the identity $f(x) = e^(ln(f(x)))$.

== Concrete examples

=== Differentiating $a^x$ and $log_a(x)$

To differentiate the function $f(x) = a^x$ for some positive real number $a$
not equal to $e$, we can rewrite it using the logarithmic trick:
$
f(x) = a^x = e^(ln(a^x)) = e^(x  ln(a)).
$
Differentiating this using the chain rule, we get
$
f'(x) = frac(dd(""),dd(x))[e^(x  ln(a))] = e^(x  ln(a))  frac(dd(""),dd(x))[x  ln(a)] = a^x  ln(a).
$
To differentiate the function $g(x) = log_a(x)$ for some positive real number
not equal to $e$ and not equal to $1$, we can rewrite it using the
logarithmic trick:
$
g(x) = log_a (x) = log_a (e^(ln(x))) = ln(x) log_a (e).
$
Differentiating this yields
$
g'(x) = frac(dd(""),dd(x))[ln(x) log_a (e)] = log_a (e)  frac(dd(""),dd(x))[ln(x)] = frac(log_a (e),x) = frac(1, x ln(a)),
$
where we used the _change of base formula_ $log_a (x) = frac(log_b (x), log_b (a))$,
in the particular case $b = e$.

=== Differentiating $x^x$

To differentiate the function $h(x) = x^x$, we can rewrite it using the
logarithmic trick:
$
h(x) = x^x = e^(ln(x^x)) = e^(x  ln(x)).
$
Differentiating this using the chain rule, and subsequently the product rule,
we get
$
h'(x) = frac(dd(""),dd(x))[e^(x  ln(x))] = e^(x  ln(x))  frac(dd(""),dd(x))[x  ln(x)] = x^x  ( ln(x) + x  frac(dd(""),dd(x))[ln(x)]) = x^x  (ln(x) + 1).
$



#pagebreak()

= Exercises

Hereon, we assume that $x$ lies in the domain of the functions being differentiated.

== Chain rule

Differentiate the following functions using the chain rule:
1. $h(x) = sin(x^2 + 1)$
2. $k(t) = e^(3t^2 - t)$
3. $m(u) = ln(5u^3 + 2u)$
4. $n(x) = sin(cos(sin(x)))$

Differentiate the following functions using implicit differentiation:
5. $x^2 + y^2 = 25$
6. $x^3 + y^3 = 6x y$
7. $e^(x y) + x^2 - y = 0$
8. $ln(x y) + x - y^2 = 4$

== Logarithmic trick
Differentiate the following functions using the logarithmic trick:
9. $f(x) = 3^x$
10. $g(x) = log_2(x)$
11. $h(x) = x^x$
12. $k(x) = sin(x)^(cos(x))$


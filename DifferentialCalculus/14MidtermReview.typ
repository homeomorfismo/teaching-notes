#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00Template.typ": *
#show: main_format

#date_header
#make_title

This midterm review consists of six (6) sections for a total of 90 points.
You may return this review complete (and correct) on the day of the exam for
five (5) extra credit points.

= (15 points) True or False

Determine whether each of the following statements is true or false.
If the statement is false, provide a brief explanation or a counterexample.
If the statement is true, you do not need to provide any explanation.
Each statement is worth 3 points.

+ If a function $f(x)$ is continuous at a point $x = a$,
  then it is also differentiable at that point.
+ If a function $f(x)$ is differentiable at a point $x = a$,
  then it is also continuous at that point.
+ The limit of the sequence $x_n = (-1)^n$ as $n$ approaches infinity exists,
  and is equal to 0.
+ If $a < b$ and $f$ is a function (not necessarily continuous)
  such that $f(a) f(b) < 0$,
  then there exists a point $c$ in the interval $(a, b)$ such that $f(c) = 0$.
+ If $a < b$ and $f$ is a continuous function such that $f(a) f(b) < 0$,
  then there exists a point $c$ in the interval $(a, b)$ such that $f(c) = 0$.

= (15 points) Evaluate the limits

Compute the following limits. Please, carry out all necessary steps to justify
your answers, and carry out any algebraic simplifications needed.


+ (2 points) $limits(lim)_(x -> -pi) 3$
+ (2 points) $limits(lim)_(x -> frac(pi, 2)) cos(x)$
+ (3 points) $limits(lim)_(x -> 0) frac(sin(3x), x)$
+ (4 points) $limits(lim)_(x -> oo) frac(3x^2 + 1, 5x^2 - x + 4)$
+ (4 points) $limits(lim)_(x -> 2) frac(x^2 - 4, x - 2)$

= (15 points) Analysis of a piecewise-defined function

Consider the function $f(x)$ defined as follows:
$
f(x) = cases(
  alpha x + 1 " if " x < 1,
  x^2 - 1 " if " x >= 1,
)
$

+ (5 points) State:
  1. The value of $f(1)$.
  2. The left-hand limit of $f(x)$ as $x$ approaches 1.
  3. The right-hand limit of $f(x)$ as $x$ approaches 1.
+ (5 points) Determine the value of the constant $alpha$ such that
  $f(x)$ is continuous at $x = 1$.
+ (5 points) With the value of $alpha$ found in the previous part,
  sketch the graph of $f(x)$.

= (15 points) Qualitative analysis of a function

Given the graph @discontinuities of a function $f(x)$ shown below,
provide the following answers:

#figure(
  lq.diagram(
    lq.plot(lq.linspace(-2, -1), x => -1, mark: none, color: psu-blue),
    lq.plot(lq.linspace(-1, 1), x => x*x, mark: none, color: psu-blue),
    lq.plot(lq.linspace(1, 2), x => 1, mark: none, color: psu-blue),
    lq.ellipse(-1, -1, width: 0.1, height: 0.1, fill: psu-white, stroke: psu-blue, align: center),
    lq.ellipse(-1, 1, width: 0.1, height: 0.1, fill: psu-white, stroke: psu-blue, align: center),
    lq.ellipse(-1, 0, width: 0.1, height: 0.1, fill: psu-blue, stroke: psu-blue, align: center),
    lq.ellipse(0, 0, width: 0.1, height: 0.1, fill: psu-white, stroke: psu-blue, align: center),
    lq.ellipse(0, 1, width: 0.1, height: 0.1, fill: psu-blue, stroke: psu-blue, align: center),
    lq.ellipse(1, 1, width: 0.1, height: 0.1, fill: psu-blue, stroke: psu-blue, align: center),
  ),
  caption: [The graph of a function $f(x)$.],
) <discontinuities>

+ (7 points) Compute:
   - $f(-1)$
   - $lim_(x -> -1^-) f(x)$
   - $lim_(x -> -1^+) f(x)$
   - Conclude whether $f(x)$ is continuous at $x = -1$.
   - Can it be made continuous at $x = -1$ by redefining its value there?
+ (8 points) Compute:
   - $f(0)$
   - $lim_(x -> 0^-) f(x)$
   - $lim_(x -> 0^+) f(x)$
   - Conclude whether $f(x)$ is continuous at $x = 0$.
   - Can it be made continuous at $x = 0$ by redefining its value there?
   - Can $f$ be made differentiable at $x = 0$ by redefining its value there?

= (15 points) Limit algebra

Assume that:
- $limits(lim)_(x -> 3) f(x) = 4$,
- $limits(lim)_(x -> 3) g(x) = -2$, and
- $limits(lim)_(x -> 5) h(x) = 0$.

Using limit laws, compute the following limits:
+ (3 points) $limits(lim)_(x -> 3) (2 f(x) - 3 g(x))$
+ (3 points) $limits(lim)_(x -> 3) frac(f(x), g(x))$
+ (3 points) $limits(lim)_(x -> 4) (f(x-1) + h(x+1))^2$
+ (3 points) $limits(lim)_(x -> 3) (f(x) - 4)(g(x) + 2)$
+ (3 points) $limits(lim)_(x -> 5) f(x-2)^(h(x))$

= (15 points) Derivatives

Compute the derivatives (by definition) of the following functions.
Show all necessary steps.

Remember that the derivative of a function $f(x)$ is defined as
$
f'(a) = limits(lim)_(h -> 0) frac(f(a + h) - f(a), h)
      = limits(lim)_(x -> a) frac(f(x) - f(a), x - a).
$

+ (2 points) $f(x) = 0$
+ (3 points) $f(x) = x$
+ (5 points) $f(x) = x^3$
+ (5 points) $f(x) = sin(x)$

Remember that $sin(alpha) - sin(beta) = 2 cos(frac(alpha + beta, 2)) sin(frac(alpha - beta, 2))$.




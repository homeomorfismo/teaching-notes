#import "@preview/lilaq:0.5.0" as lq
#import "00Template.typ": *
#show: main_format

#date_header
#make_title

= Exercises

== More limits

#columns(2)[
  - $limits(lim)_(x -> -5) frac(frac(1,5) + frac(1,x), x + 5)$
  - $limits(lim)_(x->-1) a x^2 + (5 - 2 a)x + 4$, where $a in RR$
  - $limits(lim)_(x->4) (frac(1,sqrt(x)-2) - frac(3,x-4))$
  #colbreak()
  - $limits(lim)_(x->oo) frac(10 x^2 - 1, 3 x^2 + x - 5)$
  - $limits(lim)_(x->-oo) frac(sqrt(4x^2 + 3x), x-1)$. Recall that $sqrt(x^2) = abs(x)$.
  - $limits(lim)_(x->3) frac(sqrt(3x) - sqrt(2x - 2), x^2 - 4)$
]

== Squeeze Theorem and Trigonometric Limits

#columns(2)[
  - $limits(lim)_(x->0) x^2 sin(frac(1,x))$
  - $limits(lim)_(x->5) (x-5) e^(cos(frac(1,x-5)))$
  - $limits(lim)_(x->0) x^4 cos(frac(2,x))$
  - $limits(lim)_(x->frac(pi,4)) frac(sin(x) - cos(x), 1 - tan(x))$
  - $limits(lim)_(x->0) frac(cos(m x) - cos(n x), x^2)$, where $m, n in NN$
  #colbreak()
  - $limits(lim)_(x->0) frac(sin(3x),sin(5x))$
  - $limits(lim)_(n->oo) n sin(frac(pi,n))$
  - $limits(lim)_(x->0) frac(1 - cos(x), x^2)$.
  - $limits(lim)_(x->1) (1-x) tan(frac(pi x,2))$
]
Keep in mind the _half-angle identity_ $1 - cos(x) = 2 sin^2(frac(x,2))$,
the _Pythagorean identity_ $sin^2(x) + cos^2(x) = 1$, the _cofunction identities_
$sin(frac(pi,2) - x) = cos(x)$ and $cos(frac(pi,2) - x) = sin(x)$, and the _angle-sum identities_
$sin(a + b) = sin(a) cos(b) + cos(a) sin(b)$ and $cos(a + b) = cos(a) cos(b) - sin(a) sin(b)$,
and the definition of the trigonometric functions.

== Continuity of piecewise functions

=== On the computation of limits and continuity

Compute the following _lateral_ limits and compute the value of the function at
the given point, if it exists.
Then determine if the function is continuous at that point.
If it is not continuous, determine if it has a removable discontinuity,
a jump discontinuity, or an infinite discontinuity.
Sketch the graph of the function.

#columns(2)[
  - Compute $limits(lim)_(x->3^-) f(x)$, $limits(lim)_(x->3^+) f(x)$, and $f(3)$ for
  $
  f(x) = cases(
    (x^2 - 9)/(x - 3) "if" x < 3,
    6 "if" x = 3,
    -2x + 12 "if" x > 3
  )
  $
  - Compute $limits(lim)_(x->2^-) f(x)$, $limits(lim)_(x->2^+) f(x)$, $f(2)$,
    $limits(lim)_(x->1^-) f(x)$, $limits(lim)_(x->1^+) f(x)$, and $f(1)$ for
  $
  f(x) = cases(
    x^2 - 4 "if" x < 1,
    3 "if" x = 1,
    4 - x "if" 1 < x < 2,
    ln(x) "if" x >= 2
  )
  $
  #colbreak()
  - Compute $limits(lim)_(x->0^-) f(x)$, $limits(lim)_(x->0^+) f(x)$, and $f(0)$ for
  $
  f(x) = cases(
    sin(x)/x "if" x < 0,
    1 "if" x = 0,
    e^(-x) "if" x > 0
  )
  $
  - Compute $limits(lim)_(x->1^-) f(x)$, $limits(lim)_(x->1^+) f(x)$, and $f(1)$ for
  $
  f(x) = cases(
    frac(1,x-1) "if" x < 1,
    e^(-x) "if" x >= 1
  )
  $
]

=== Identifying types of discontinuities from a graph

Look at the graph of $g$ below, and provide:
- the points where $g$ is discontinuous;
- $limits(lim)_(x->0^-) g(x)$ and $limits(lim)_(x->0^+) g(x)$; // gap discontinuity
- $limits(lim)_(x->1) g(x)$; // infinite discontinuity
- $g(2)$ and $limits(lim)_(x->2) g(x)$; // removable discontinuity, currently discontinuous


#figure(
  lq.diagram(
    ylabel: "",
    ylim: (auto, 5),
    lq.plot(lq.linspace(-1,0), x => calc.sin(x)/x, mark: none, color: psu-blue),
    lq.plot(lq.linspace(0.01,0.99), x => 1.5/(1-x), mark: none, color: psu-blue),
    lq.vlines(1, stroke: (dash: "dotted", thickness: 1.0pt)),
    lq.plot(lq.linspace(1.01,2), x => 1/(x - 1), mark: none, color: psu-blue),
    lq.plot(lq.linspace(2,3), x => 5-2*x, mark: none, color: psu-blue),
    lq.ellipse(0,1, width: 0.1, height: 0.1, stroke: psu-red, align: center, fill: psu-white),
    lq.ellipse(0,1.5, width: 0.1, height: 0.1, stroke: psu-red, align: center, fill: psu-white),
    lq.ellipse(2,1, width: 0.1, height: 0.1, stroke: psu-red, align: center, fill: psu-white),
    lq.ellipse(2,3, width: 0.1, height: 0.1, stroke: psu-blue, align: center, fill: psu-blue),
  ),
  caption: [
    The graph of $g(x)$.
  ]
)

== Intermediate Value Theorem

Use the Intermediate Value Theorem to show that there is a root of the given function
in the specified interval.

#columns(2)[
  - Show that $f(x) = x^3 + 4x - 1$ has a root in the interval $[0,1]$.
  - Show that $f(x) = cos(x) - x$ has a root in the interval $[0,1]$.
  - Show that $f(x) = e^x - 2 - x$ has a root in the interval $[0,1]$.
  - Show that $f(x) = x^5 + x + 1$ has a root in the interval $[-1,0]$.
]

Pick one of the functions above and use the bisection method to approximate
a root to two decimal places.

// === Challenge: dyadic rationals
// 
// A _dyadic rational_ is a number of the form $m/2^n$ where $m in ZZ$ and $n in NN$.
// Show that the set of dyadic rationals is dense in $RR$,
// i.e., for any two real numbers $a < b$, there is a dyadic rational $q$ such that
// $a < q < b$.

#import "@preview/lilaq:0.5.0" as lq
#import "00Template.typ": *
#show: main_format

#date_header
#make_title

= The Squeeze Theorem (or Sandwich Theorem)

What happens when a group of people are walking _side by side_ and the sidewalk
starts to get narrow? They have to _squeeze_ together, right?
The same idea applies to functions, sequences, and limits: the important thing
is the idea that, close to the point of interest, we can _enclose_ the function
between two other functions---and hopefully those two other functions are easier
to work with.
This "squeezing" doesn't need to happen everywhere, just close to the point of
interest.
This is the idea behind the Squeeze Theorem, which we will state below.

#grid(
  columns: (2fr, 1fr),
  rows: (auto, auto),
  gutter: 0.5cm,
  block(
    title: "The Squeeze Theorem (for functions)"
  )[
    Let $f(x)$, $g(x)$, and $h(x)$ be functions such that
    $f(x) <= g(x) <= h(x)$ for all $x$ in some open interval
    containing $a$, except possibly at $x = a$ itself.
    If $lim_(x -> a) f(x) = lim_(x -> a) h(x)$ exists and _is a real number_,
    then $lim_(x -> a) g(x)$ exists and
    $
    lim_(x -> a) f(x) = lim_(x -> a) g(x) = lim_(x -> a) h(x).
    $
  ],
  grid.cell(
    rowspan: 2,
    align: center + horizon,
    figure(
      lq.diagram(
        ylabel: "",
        lq.plot(lq.linspace(-2, 2), x => 2*x*x*calc.abs(calc.sin(6*x)), mark: none, color: psu-purple, stroke: (dash: "dotted", thickness: 1.0pt)),
        lq.plot(lq.linspace(-2, 2), x => 0.1*x*x, mark: none, color: psu-red),
        lq.plot(lq.linspace(-2, 2), x => 2*x*x, mark: none, color: psu-blue),
      ),
      caption: [
        The Squeeze Theorem in action:
        the red curve and the blue curve "squeeze" the dotted purple curve,
        so they all have the same limit at $x = 0$.
      ]
    )
  ),
  block(
    title: "The Squeeze Theorem (for sequences)"
  )[
    Let $(a_n)$, $(b_n)$, and $(c_n)$ be sequences such that
    $a_n <= b_n <= c_n$ for all $n$ greater than some index $N$.
    If $lim_(n -> oo) a_n = lim_(n -> oo) c_n$ exists and _is a real number_,
    then $lim_(n -> oo) b_n$ exists and
    $
    lim_(n -> oo) a_n = lim_(n -> oo) b_n = lim_(n -> oo) c_n.
    $
  ]
)

== The canonical example: $lim_(x -> 0) sin(x)/x$

One of the most common uses of the Squeeze Theorem is to compute
$lim_(x -> 0) sin(x)/x$.
There is an #link("https://www.themathdoctors.org/limit-of-sinx-x/")[important
geometric argument] that yields the inequalities
$cos(x) <= sin(x)/x <= 1$ for all (angles) $0<x<pi/2$.
The parity of the sine and cosine functions allow us to use the _substitution
trick_ $x |-> -x$ to extend this to $-pi/2 < x < 0$ as well.
As $lim_(x -> 0) cos(x) = 1$ and $lim_(x -> 0) 1 = 1$, the Squeeze Theorem
tells us that $lim_(x -> 0) sin(x)/x = 1$ as well.

#figure(
  lq.diagram(
    ylabel: "",
    xaxis: (
      locate-ticks: lq.locate-ticks-linear.with(unit: calc.pi),
      format-ticks: lq.format-ticks-linear.with(suffix: $pi$),
    ),
    lq.fill-between(
      lq.linspace(-calc.pi/2, calc.pi/2),
      x => calc.cos(x),
      y2: x => 1,
      fill: psu-light-blue.lighten(50%),
    ),
    lq.plot(lq.linspace(-calc.pi*2, calc.pi*2), x => calc.sin(x)/x, mark: none, color: psu-purple, stroke: (dash: "dotted", thickness: 1.0pt)),
    lq.plot(lq.linspace(-calc.pi*2, calc.pi*2), x => calc.cos(x), mark: none, color: psu-red),
    lq.plot(lq.linspace(-calc.pi*2, calc.pi*2), x => 1, mark: none, color: psu-blue),
  ),
  caption: [
    Another application of the Squeeze Theorem.
    Note that $sin(x)/x$ is not defined at $x = 0$ yet has a removable
    discontinuity there with limit $1$.
    Furthermore, note that the "squeezing" only happens close to $x = 0$.
    Highlighted region shows where _we prove_ the squeezing happens ($-pi/2 < x < pi/2$).
  ]
)

= The Intermediate Value Theorem

The Intermediate Value Theorem (IVT) has its roots in the idea of
_connectedness_: things that are in one piece *must* remain in one piece if
we apply a continuous transformation to them.

For example, if we have a rubber band and we stretch it or bend it, it
remains in one piece.
However, if we cut the rubber band, it is no longer in one piece: cutting
it is *not a continuous* transformation, as there is a _sudden jump_ from
one piece to two pieces.

This idea extrapolates to real-valued functions of a real variable: if we have
a continuous function $f: RR -> RR$ and we look at the graph of $f$ over an
interval $I$, then the _image_ of $I$ under $f$ (i.e., the set of all
values $f(x)$ for $x in I$) is also an interval.
Here, an interval will look like:
- a closed interval $[a, b] = { x in RR : a <= x <= b }$,
- an open interval $(a, b) = { x in RR : a < x < b }$, or
- a half-open interval $[a, b) = { x in RR : a <= x < b }$
  or $(a, b] = { x in RR : a < x <= b }$,
- a open (semi-)ray $(a, oo) = { x in RR : x > a }$ or $(-oo, b) = { x in RR : x < b }$,
- a closed (semi-)ray $[a, oo) = { x in RR : x >= a }$ or $(-oo, b] = { x in RR : x <= b }$,
- or the entire real line $(-oo, oo) = RR$.
We reduce the usage of the term "interval" to mean only the first three types
above (i.e., *bounded* intervals).

#block(
  title: "The Intermediate Value Theorem (practical formulation)"
)[
  Let $f: RR -> RR$ be a continuous function on the closed interval $[a, b]$.
  If $z$ is any number between $f(a)$ and $f(b)$, i.e.,
  $f(a) < z < f(b)$ or $f(a) > z > f(b)$,
  then there exists a point $c$ in the open interval $(a, b)$ such that $f(c) = z$.
]

#block(
  title: "The Intermediate Value Theorem (theoretical formulation)"
)[
  Let $f: RR -> RR$ be a continuous function on the closed interval $[a, b]$.
  Then $f([a, b]) = [limits(min)_(x in [a,b]) f(x), limits(max)_(x in [a,b]) f(x)]$.
]

== Bisection method

A fundamental question in mathematics is: given a function $f(x)$, can we find
all the solutions to the equation $f(x) = 0$?
This is called finding the _roots_ or _zeros_ of $f$.

This is no trivial endeavor: for example, it is known that there is no
_general_ formula for finding the roots of a polynomial of degree $5$ or
higher (this is the Abel-Ruffini Theorem, which opens the door to Galois
Theory).

_However_, if we know that $f$ is continuous on an interval $[a, b]$ and
that $f(a)$ and $f(b)$ have opposite signs, then the IVT guarantees that
there is at least one root in the open interval $(a, b)$ _since $0$ is
between $f(a)$ and $f(b)$_.
This is the basis of the _bisection method_ for finding roots of continuous
functions.

#block(
  title: "The Bisection Method"
)[
  Let $f: RR -> RR$ be a continuous function on the closed interval $[a, b]$.
  If $f(a)$ and $f(b)$ have opposite signs, i.e., $f(a) < 0 < f(b)$ or
  $f(a) > 0 > f(b)$, then there exists at least one point $c$ in the open
  interval $(a, b)$ such that $f(c) = 0$.

  To find an approximation of such a point $c$, we can use the following
  iterative method:
  1. Compute the midpoint $m = (a + b)/2$ of the interval $[a, b]$.
  2. Evaluate $f(m)$.
     - If $f(m) = 0$, then we have found the root and can stop.
     - If $f(m)$ has the same sign as $f(a)$, then set $a = m$.
     - If $f(m)$ has the same sign as $f(b)$, then set $b = m$.
  3. Repeat steps 1 and 2 until the interval $[a, b]$ is sufficiently small,
     i.e., until $|b - a| < epsilon$ for some small tolerance level
     $epsilon > 0$.

  This method will converge to a root of $f(x) = 0$ within the interval
  $[a, b]$.
]

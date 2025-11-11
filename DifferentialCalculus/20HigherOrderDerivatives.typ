#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00Template.typ": *
#show: main_format

#date_header
#make_title

= On higher order derivatives

Previously, we have defined the first derivative of a function $f: RR & -> RR$
as the function $f': RR & -> RR$, given by
$
f'(x)
= lim_(h -> 0) (f(x + h) - f(x)) / h
= lim_(y -> x) (f(y) - f(x)) / (y - x).
$
We have argued that the derivative $f'(x)$ gives the slope of the _best linear
approximation_ of $f$ at the point $x$, and thus, it corresponds to the slope
of the tangent line to the graph of $f$ at the point $(x, f(x))$.
We have also made a case on the interpretation of the derivative as a rate of
change of the output of $f$ with respect to its input $x$.

*What constrains us to repeat this process only once?* As the derivative $f'$
is itself a function from $RR$ to $RR$, we can consider its derivative
as well.
This leads us to the definition of the _second derivative_ of $f$,
$f'': RR & -> RR$, given by
$
f''(x)
= lim_(h -> 0) (f'(x + h) - f'(x)) / h
= lim_(y -> x) (f'(y) - f'(x)) / (y - x).
$
The second derivative $f''(x)$ gives the slope of the best linear approximation
of $f'$ at the point $x$ (and we will soon see that it gives more information
about the behavior of $f$ at $x$ as well).
It also corresponds to the rate of change of the rate of change of $f$ at $x$:
in other words, it describes the _acceleration_ of $f$ at $x$.

*But we can iterate _ad infinitum_!* For each natural number $n in NN$, we can
define the _n-th derivative_ of $f$, denoted by $f^((n)): RR & -> RR$, given by
the derivative of the $(n-1)$-th derivative $f^((n-1))$.
We will denote this as
$
f^((n))(x) = frac(dd("")^n, dd(x^n)) f(x).
$

#block(
  title: "Higher order derivatives of a polynomial function",
)[
  Let $f: RR & -> RR$ be the function defined by $f(x) = x^3 - 3x^2 + 4. $
  Then,
  - The first derivative of $f$ is $f'(x) = 3x^2 - 6x$.
  - The second derivative of $f$ is $f''(x) = 6x - 6$.
  - The third derivative of $f$ is $f'''(x) = 6$.
  - The fourth derivative of $f$ is $f^((4))(x) = 0$.
  - All higher order derivatives of $f$ are also $0$.
]

#block(
  title: "Higher order derivatives of the sine function",
)[
  Let $f: RR & -> RR$ be the function defined by $f(x) = sin(x). $
  Then,
  - The first derivative of $f$ is $f'(x) = cos(x)$.
  - The second derivative of $f$ is $f''(x) = -sin(x)$.
  - The third derivative of $f$ is $f'''(x) = -cos(x)$.
  - The fourth derivative of $f$ is $f^((4))(x) = sin(x)$.
  - The higher order derivatives of $f$ repeat this cycle every four
    derivatives.
]

= Definition of maxima and minima

Consider $f: RR & -> RR$ a function and $x_0 in RR$ a point in *its domain*.

#grid(
  columns: (1fr, 1fr),
  align: left + horizon,
  gutter: 1em,
  block(
    title: "Local maximum",
    color: psu-electric-green,
  )[
    We say that $f$ has a _local maximum_ at $x_0$ if there exists an open
    interval $(a, b)$ containing $x_0$ such that for all $x in (a, b)$ in the
    domain of $f$, $x != x_0$, we have $f(x) < f(x_0)$.
  ],
  block(
    title: "Local minimum",
    color: psu-electric-green,
  )[
    We say that $f$ has a _local minimum_ at $x_0$ if there exists an open
    interval $(a, b)$ containing $x_0$ such that for all $x in (a, b)$ in the
    domain of $f$, $x != x_0$, we have $f(x) > f(x_0)$.
  ],
  block(
    title: "Global maximum",
    color: psu-forest-green,
  )[
    We say that $f$ has a _global maximum_ at $x_0$ if *for all* $x in RR$,
    in the domain of $f$, we have $f(x) <= f(x_0)$.
  ],
  block(
    title: "Global minimum",
    color: psu-forest-green,
  )[
    We say that $f$ has a _global minimum_ at $x_0$ if *for all* $x in RR$,
    in the domain of $f$, we have $f(x) >= f(x_0)$.
  ],
)

#grid(
  columns: (1fr, 1fr),
  align: left + top,
  gutter: 1em,
  [
    #figure(
      lq.diagram(
        lq.plot(lq.linspace(-1, 2), x => x*x*x - x*x - 2*x, mark: none, color: psu-blue),
        lq.plot(lq.linspace(-1.25, -1), x => x*x*x - x*x - 2*x, mark: none, stroke: (dash: "dotted"), color: psu-blue),
        lq.plot(lq.linspace(2, 2.25), x => x*x*x - x*x - 2*x, mark: none, stroke: (dash: "dotted"), color: psu-blue),
        lq.ellipse(-1., 0., width: 0.1, height: 0.1, stroke: psu-blue, align: center, fill: psu-blue),
        lq.ellipse(2., 0., width: 0.1, height: 0.1, stroke: psu-blue, align: center, fill: psu-blue),
        lq.ellipse(-0.54858, 0.63113, width: 0.1, height: 0.1, stroke: psu-blue, align: center, fill: psu-blue),
        lq.ellipse(1.21525, -2.11261, width: 0.1, height: 0.1, stroke: psu-blue, align: center, fill: psu-blue),
      ),
      caption: [The function $f(x) = x^3 - x^2 - 2x$ _restricted_ to the interval
      $[-1, 2]$.]
    ) <extrema>
  ],
  [
    #figure(
      table(
        columns: (1fr, auto),
        table.header(
          [$x$],
          [$f(x)$],
        ),
        [$-1$],
        [$f(-1) = 2$],
        [$frac(1 - sqrt(7), 3) approx -0.54...$],
        [$f(frac(1 - sqrt(7), 3)) = frac(8 + 4sqrt(7), 27) approx 0.63...$],
        [$frac(1 + sqrt(7), 3) approx 1.21...$],
        [$f(frac(1 + sqrt(7), 3)) = frac(8 - 4sqrt(7), 27) approx -2.11...$],
        [$2$],
        [$f(2) = -4$],
      ),
      caption: [Values of $f$ at its local and global extrema.]
    ) <table_extrema>
  ],
)

Note that a global maximum (or minimum) is also a local maximum (or minimum),
but not necessarily the other way around.

In @extrema, the function $f(x) = x^3 - x^2 - 2x$ has a local
maximum at $x = frac(1 - sqrt(7), 3)$ and a local minimum at
$x = frac(1 + sqrt(7), 3)$.
When _restricted_ to the interval $[-1, 2]$, we note that $f$ has _now_ a
global maximum at $x = frac(1 - sqrt(7), 3)$ and a global minimum at
$x = frac(1 + sqrt(7), 3)$.
This restriction also provides us with two new local extrema: a local minimum
at $x = -1$ and a local maximum at $x = 2$.
These values are summarized in @table_extrema.

== Critical points and the first derivative test

#block(
  title: "Critical point",
  color: psu-electric-green,
)[
  We say that $x_0 in RR$ is a _critical point_ of a function $f: RR & -> RR$
  if either $f'(x_0) = 0$ or $f'$ is not defined at $x_0$ (here, "not defined"
  means that the derivative is not defined bilaterally; that is, either the
  left-hand or right-hand derivative does not exist).
]

A critical point $x_0$ is a candidate for being a local maximum or minimum of
$f$, due to the following result (which we will not prove here).
#block(
  title: "Fermat's Theorem",
  color: psu-forest-green,
)[
  If $f: RR & -> RR$ has a local maximum or minimum at $x_0 in RR$, and if
  $f'$ is defined at $x_0$, then $f'(x_0) = 0$.
]

=== How to compute local extrema using the first derivative test?

To find the critical points of a function $f: RR & -> RR$, follow these steps:
1. Compute the derivative $f'$ of $f$.
2. Find the critical points of $f$ by solving the equation $f'(x) = 0$ and
   identifying where $f'$ is not defined.

#block(
  title: "A troublesome example",
  color: psu-red,
)[
  Consider the function $f: RR & -> RR$ defined by $f(x) = x^3$.
  This function has a critical point at $x = 0$, since $f'(x) = 3x^2$ and thus
  $f'(0) = 0$ is the only solution to $f'(x) = 0$.
  However, $f$ does not have a local maximum or minimum at $x = 0$, since it is
  strictly increasing at that point.
]

== Concavity and the second derivative test

#block(
  title: "Concavity (or convexity)",
  color: psu-electric-green,
)[
  Let $f: RR & -> RR$ be a function twice differentiable at $x_0 in RR$.
  - We say that the graph of $f$ is _concave up (or convex)_ at $x_0$ if
    $f''(x_0) > 0$.
  - We say that the graph of $f$ is _concave down (or concave)_ at $x_0$ if
    $f''(x_0) < 0$.
]

// sign of the derivative, graph doodle, emoji, name, extrema label
#show: lq.set-diagram(
  xaxis: (ticks: none),
  yaxis: (ticks: none),
  width: 2.5cm,
  height: 2cm,
)
#figure(
  table(
    columns: (1fr, 1fr, 0.75fr, 1fr, 1.5fr),
    align: left + horizon,
    gutter: 0.25em,
    [Sign of $f''(x)$],
    [Graph],
    [Mnemonic],
    [Concavity],
    [Extrema],
    [$f''(x) > 0$],
    lq.diagram(
      lq.plot(lq.linspace(-1, 1), x => 0.5*x*x, mark: none, color: psu-blue),
    ),
    [#emoji.face.grin, #emoji.face.happy, #emoji.face.smirk],
    [Concave up (or convex)],
    [$x$ is a _local minimum_],
    [$f''(x) < 0$],
    lq.diagram(
      lq.plot(lq.linspace(-1, 1), x => -0.5*x*x, mark: none, color: psu-blue),
    ),
    [#emoji.face.angry.red, #emoji.face.tear, #emoji.face.frown.slight],
    [Concave down (or concave)],
    [$x$ is a _local maximum_],
  ),
  caption: [Concavity and its relation to local extrema.]
) <concavity_table>

In @concavity_table, we summarize the relation between the sign of the
second derivative of a function $f$ at a point $x$, the concavity of the graph
of $f$ at $x$, and the type of local extremum *(if any)* that $f$ has at $x$.
Two important remarks:
1. If $f''(x) = 0$, then the second derivative test is inconclusive; that is,
   we cannot determine the concavity of $f$ at $x$ nor the type of extremum
   *(if any)* that $f$ has at $x$.
2. The concavity/convexity analysis can be done to any point in the domain of
   $f$, not only at critical points.
   *Nevertheless,* concluding a point *is* a local extremum based on the
   concavity _requires the point to be a critical point as well_.

== The truth is for the brave ones who seek it...

Note that $f(x) = x^4$ has a critical point at $x = 0$, since
$f'(x) = 4x^3$ and thus $f'(0) = 0$ is the only solution to $f'(x) = 0$.
However, $f''(x) = 12x^2$ and thus $f''(0) = 0$, making the second derivative
test inconclusive.
Nevertheless, by staring at the graph of $f$, we can see that $f$ has a local
minimum at $x = 0$, which is by no means surprising, given that $f(x) >= 0$ for
all $x in RR$.

To confirm this analytically, we can resort to the _higher order derivatives_ of
$f$ at $x = 0$.
It tends to be uncommon to use derivatives of order higher than two for this
purpose, but it is possible.
We state the result for completeness.

#block(
  title: "Higher order derivative test",
  color: psu-forest-green,
)[
  Let $f: RR & -> RR$ be a function with derivatives of all orders at
  $x_0 in RR$, and suppose that $f'(x_0) = f''(x_0) = ... = f^((n-1)) (x_0) = 0$
  for some natural number $n >= 2$, while $f^((n))(x_0) != 0$.
  - If $n$ is even and $f^((n))(x_0) > 0$, then $f$ has a local minimum at $x_0$.
  - If $n$ is even and $f^((n))(x_0) < 0$, then $f$ has a local maximum at $x_0$.
  - If $n$ is odd, then $f$ does not have a local maximum or minimum at $x_0$.
]
In our example, we have that $f^((4))(x) = 24$ for all $x in RR$, and thus
$f^((4))(0) = 24 > 0$.
By the higher order derivative test, we conclude that $f$ has a local minimum
at $x = 0$.

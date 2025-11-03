#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00template.typ": *
#show: main_format

#date_header
#make_title

= on differentiation

Differentiation is probably the epitome of undergratuate mathematics, and is,
by far, one of the most useful tools in mathematics, physics, engineering, and
other sciences.
This concept is so relevant nowadays in the context of the modern age we live
in: current artificial intelligence models rely on concepts from
- _automatic differentiation_
- _gradient descent_
- _backpropagation_
which are all based on differentiation, optimization, and some calculus
spiced up with linear algebra.

We will take a two-fold approach to differentiation: the classical physical
interpretation of differentiation as the rate of change, and the more
mathematical best linear approximation interpretation.

== On instantaneous rate of change

Zeno of Elea---known most notably for the mentions of his works by Aristotle and
Plato---was an ancient Greek philosopher invested in contesting and challenging
the ideas of plurality in favor of the idea of unity and _monism_.

His paradoxes encompass different thought experiments that---at the
time---seemed to defy the pluralistic view of the world.
Nevertheless, his paradoxes also set up precedents for concepts that are
related to motion, continuity, change, and even (un)certainty.

- _Atalanta wishes to go for a walk_ but in order to reach her destination,
  she must first reach the halfway point.
  However, before she can reach the halfway point, she must first reach the
  quarter-way point.
  Before she can reach the quarter-way point, she must first reach the
  eighth-way point, and so on.
  Therefore, Atalanta can never reach her destination because there are
  infinitely many points she must reach first.
- _Archilles is racing a tortoise_ but gives the tortoise a head start.
  By the time Archilles reaches the point where the tortoise started, the
  tortoise has moved ahead.
  By the time Archilles reaches that new point, the tortoise has moved ahead
  again.
  This process continues indefinitely, so Archilles can never overtake the
  tortoise.
- _Zeno observes a flying arrow_ and argues that at any single instant in time,
  the arrow is stationary because it occupies a specific position.
  Since time is composed of these instants, Zeno concludes that motion is an
  illusion.

=== Catch me if you can (in a picture)

Lets us focus on the last paradox regarding the flying arrow.
When we observe instances of the arrow in _time_, we assess its _position_ in
_space_: usually we describe this using a function that maps time to position,
and we simplify it to the real line (as arrows move in a straight line).
So let us write $x(t)$ to denote the position $x$ of the arrow at time $t$.

Zeno argues that at any given time $t_0$, the arrow is stationary. We will make
a case that, given an instant $t_0$, we can determine the velocity of the
arrow at that instant: _the arrow is endowed with an instantaneous velocity at
any given time_, thus motion is captured in an instant (yet clearly not
_phenomenologically_, but mathematically).

Before we proceed, we need to define what we mean by velocity: _velocity_ is the
rate of change of position with respect to time, and is given by the formula
$overline(v) = (Delta x) / (Delta t)$, where $Delta x = x(t_1) - x(t_0)$ is the change in position
over the time interval $Delta t = t_1 - t_0$.
This formula gives us the _average velocity_ over the time interval
$[t_0, t_1] = {t in RR | t_0 <= t <= t_1}$.

To find the _instantaneous velocity_ at time $t_0$, we consider the limit of the
average velocity as the time interval $Delta t$ approaches zero:
$
v(t_0) = lim_(Delta t -> 0) (x(t_0 + Delta t) - x(t_0)) / (Delta t).
$
This limit, if it exists, gives us the instantaneous velocity of the arrow at
time $t_0$.
Thus, we have shown that even at an instant in time, the arrow possesses a
velocity, thereby addressing Zeno's paradox.


== On best linear approximation

Another---late concern in the history of mathematics---regards the idea of
_approximability_: we used to think that anomalies were the exception, but as
mathematics progressed, we realized that these abnormal cases are more common
than anything we are used to work with.

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  figure(
    lq.diagram(
      ylim: (-0.5, auto),
      lq.plot(lq.linspace(-1, 2), x => x*x, mark: none, stroke: psu-blue),
      lq.plot(lq.linspace(-1, 2), x => 2*x - 1, mark: none, stroke: (dash: "dashed", paint: psu-orange)),
      lq.plot(lq.linspace(-1, 2), x => 1.5*x - 0.5, mark: none, stroke: (dash: "dashed", paint: psu-purple.lighten(60%))),
      lq.plot(lq.linspace(-1, 2), x => 2.3*x - 0.7, mark: none, stroke: (dash: "dashed", paint: psu-purple.lighten(60%))),
      lq.plot(lq.linspace(-1, 2), x => 1.7*x - 0.3, mark: none, stroke: (dash: "dashed", paint: psu-purple.lighten(60%))),
      lq.ellipse(1,1, width: 0.1, height: 0.1, stroke: psu-red, align: center, fill: psu-white),
    ),
    caption: [Several lines trying to approximate $f(x) = x^2$ at $x^* = 1$. Some slopes will yield _secants_ lines, and don't ensure a good approximation near the point of tangency.]
  ),
  figure(
    lq.diagram(
      ylim: (-0.5, auto),
      lq.plot(lq.linspace(-1, 2), x => x*x, mark: none, stroke: psu-blue),
      lq.plot(lq.linspace(-1, 2), x => 2*x - 1, mark: none, stroke: (dash: "dashed", paint: psu-orange)),
      lq.plot(lq.linspace(-1, 2), x => 2*x - 1.5, mark: none, stroke: (dash: "dashed", paint: psu-orange.lighten(60%))),
      lq.plot(lq.linspace(-1, 2), x => 2*x - 2, mark: none, stroke: (dash: "dashed", paint: psu-orange.lighten(60%))),
      lq.plot(lq.linspace(-1, 2), x => 2*x - 2.5, mark: none, stroke: (dash: "dashed", paint: psu-orange.lighten(60%))),
      lq.ellipse(1,1, width: 0.1, height: 0.1, stroke: psu-red, align: center, fill: psu-white),
    ),
    caption: [Several lines trying to approximate $f(x) = x^2$ at $x^* = 1$. It is not only about the best _slope_, but also the best _height_.]
  )
)

We would like to ensure the existence of a _best linear approximation_
$"Lin" (f, x^*) (x) = a (x - x^*) + b$ of a function $f$ at a point $x^*$.
This means that we want to find constants $a$ and $b$ such that
$"Lin"(f, x^*)(x) = a (x - x^*) + b$ becomes the best linear
approximation of $f$ near $x^*$.
To ensure that the line passes through the point $(x^*, f(x^*))$, we set
$b = f(x^*)$, so that
$"Lin"(f, x^*)(x) = a (x - x^*) + f(x^*)$.
*But how do we find the best slope $a$?*

The trick is to consider the error between $f$ and $"Lin"(f, x^*)$:
$
"error"(x) = f(x) - "Lin"(f, x^*)(x) = f(x) - f(x^*) - a (x - x^*).
$
We want this error to be as small as possible when $x$ is near $x^*$.
Thus, we consider the limit
$
lim_(x -> x^*) frac("error"(x), x - x^*) = lim_(x -> x^*) frac(f(x) - f(x^*) - a (x - x^*), x - x^*),
$
and we want to choose $a$ such that this limit is equal to zero.
In that case, we have
$
lim_(x -> x^*) frac(f(x) - f(x^*), x - x^*) - a = 0,
$
or equivalently,
$
a = lim_(x -> x^*) frac(f(x) - f(x^*), x - x^*).
$
This limit, if it exists, gives us the slope of the best linear approximation
$"Lin"(f, x^*)(x) = a (x - x^*) + f(x^*)$ of $f$ at $x^*$.

In a way to honor the notion of rate of change (and the ever non-standarized
notation), we denote this limit as the _derivative_ of $f$ at $x^*$, and we may
write as
$
frac(dd(f),dd(x)) (x^*) = f'(x^*) = dot(f)(x^*) = lim_(x -> x^*) frac(f(x) - f(x^*), x - x^*).
$

We may also express the derivative in terms of $Delta x = x - x^*$, and this
variation tending to zero:
$
frac(dd(f),dd(x)) (x) = f'(x) = dot(f)(x) = lim_(Delta x -> 0) frac(f(x + Delta x) - f(x), Delta x).
$

#block(
  title: "Derivative at a point",
  color: psu-orange,
)[
    The _derivative_ of a function $f$ at a point $x$, denoted as
    $frac(dd(f),dd(x)) (x)$ or $f'(x)$ or $dot(f)(x)$, is defined as
    $
    frac(dd(f),dd(x)) (x) = f'(x) = dot(f)(x) = lim_(Delta x -> 0) frac(f(x + Delta x) - f(x), Delta x).
    $

    If a function $f$ has a derivative at all $x in dom(f)$, we say that $f$ is
    _differentiable_ on its domain.
]


#block(
  title: "Differentiability at a point",
  color: psu-orange,
)[
    A function $f$ is said to be _differentiable_ at a point $x$ if the
    derivative at $x$ exists, *and*
    $
    lim_(Delta x -> 0) frac(abs(f(x + Delta x) - f(x) - f'(x) Delta x), abs(Delta x)) = 0.
    $
    This last limits means that the error between $f$ and its linear approximation
    $"Lin"(f, x)(x + Delta x) = f'(x) (Delta x) + f(x)$ goes to zero faster than
    $Delta x$.
]

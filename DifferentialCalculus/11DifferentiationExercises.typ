#import "@preview/lilaq:0.5.0" as lq
#import "00Template.typ": *
#show: main_format

#date_header
#make_title

= Exercises

Recall that a function $f$ has a _derivative_ at a point $a$ if the following
limit exists:
$
f'(a) = limits(lim)_(h->0) frac(f(a + h) - f(a), h) = limits(lim)_(x->a) frac(f(x) - f(a), x - a)
$

== Differentiation by definition

=== Differentiable functions

Compute the derivative of the following functions using the definition of the derivative.

- $f(x) = 3x^2 + 2x + 1$ at $x = 2$
- $f(x) = sqrt(x)$ at $x = 4$
- $f(x) = frac(1,x)$ at $x = 2$

=== Nondifferentiable functions

Check that the following functions are not differentiable at the given points.
- $f(x) = abs(x)$ at $x = 0$
- $f(x) = cases(x "if" x >= 1, 2 - x "if" x < 1 )$ at $x = 1$
- $f(x) = frac(abs(x - 2), x - 2)$ at $x = 2$

=== Conceptual questions

- If a function is differentiable at a point, is it continuous at that point?
  Explain and/or give a counterexample.
- If a function is continuous at a point, is it differentiable at that point?
  Explain and/or give a counterexample.
- How would you define lateral differentiability? Compare it to lateral
  limits.
- If a function has lateral derivatives at a point, is it differentiable at
  that point? Explain and/or give a counterexample.
- If a function is differentiable at a point, does it have lateral derivatives
  at that point? Explain and/or give a counterexample.
- If a function has a derivative at a point, what can you say about the
  tangent line to the graph of the function at that point?

== Linear approximation

Recall that the (best) _linear approximation_ of a function $f$ at a point $a$
is given by
$
"Lin"(f, a)(x) = f(a) + f'(a)(x - a)
$

=== Compute linear approximations

Compute the linear approximation of the following functions at the given points.
- $f(x) = x^3$ at $a = 1$
- $f(x) = sin(x)$ at $a = pi/4$
- $f(x) = cos(x)$ at $a = pi/3$

== Qualitative analysis

#grid(
  columns: (1fr, 1fr),
  gutter: 0.5cm,
  figure(
    lq.diagram(
      lq.plot(lq.linspace(-2, 2), x => x*x*x - 3*x + 2, mark: none, stroke: psu-blue),
      lq.plot(lq.linspace(-2, 2), x => 3*x*x - 3, mark: none, stroke: (dash: "dashed", paint: psu-red)),
      lq.vlines(-1, label: [$x = -1$] , stroke: (dash: "dotted", paint: psu-stone.darken(20%))),
      lq.vlines(1, label: [$x = 1$] , stroke: (dash: "dotted", paint: psu-purple.darken(20%))),
    ),
    caption: [Graph of $f(x) = x^3 - 3x + 2$ and its derivative $f'(x) = 3x^2 - 3$.]
  ),
  figure(
    lq.diagram(
      lq.plot(lq.linspace(-2, 2), x => 3*x*x - 3, mark: none, stroke: (dash: "dashed", paint: psu-red)),
      lq.fill-between(
        lq.linspace(-2, -1),
        x => 3*x*x - 3,
        y2: x=> 0,
        fill: psu-blue.lighten(50%),
      ),
      lq.fill-between(
        lq.linspace(-1, 1),
        x => 3*x*x - 3,
        y2: x=> 0,
        fill: psu-red.lighten(50%),
      ),
      lq.fill-between(
        lq.linspace(1, 2),
        x => 3*x*x - 3,
        y2: x=> 0,
        fill: psu-blue.lighten(50%),
      ),
      lq.vlines(-1, label: [$x = -1$] , stroke: (dash: "dotted", paint: psu-stone.darken(20%))),
      lq.vlines(1, label: [$x = 1$] , stroke: (dash: "dotted", paint: psu-purple.darken(20%))),
    ),
    caption: [Graph of $f'(x) = 3x^2 - 3$, highlighting intervals where $f'(x) > 0$ (blue) and $f'(x) < 0$ (red).]
  )
)

Recall that the derivative represents the _slope_ of the tangent line to the graph
of a function at a given point.

Take a look at the graphs above of the function $f(x) = x^3 - 3x + 2$ and its derivative:
- Where is the function $f(x) = x^3 - 3x + 2$ increasing?
- Where is the function $f(x) = x^3 - 3x + 2$ decreasing?
- Where is the function $f'(x) = 3x^2 - 3$ positive?
- Where is the function $f'(x) = 3x^2 - 3$ negative?
- What is the relationship between the sign of $f'(x)$ and whether $f(x)$ is
  increasing or decreasing?

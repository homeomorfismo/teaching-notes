#import "@preview/lilaq:0.5.0" as lq
#import "00Template.typ": *
#show: main_format

#date_header
#make_title

= A note on domains

Some operations are forbidden, or at least not well-defined.
In order to make sure we are not doing anything that escapes our control, it is
customary---and good practice---to always specify the _domain_ of a function.

For example, the function $f(x) = 1/x$ is not defined at $x = 0$.
Thus, *even if we describe $f$ as $f: RR -> RR$*, we should always keep in mind
that its domain is actually $dom(f) = RR without {0}$.
Similarly, the function $g(x) = sqrt(x)$ is not defined for negative numbers.
Thus, its domain is $dom(g) = RR^+ = [0, +oo) = { x in RR : x >= 0 }$.

#block(
  title: "Domain of a function",
)[
  Given a function $f: X -> Y$, its domain is $dom(f) = { x in X : f(x) in Y }$.
  This is, the set of all elements in $X$ that *can* be mapped to an element in
  $Y$.
]

= Limits of functions

The formal definition of limit _of functions_ is similar to that of sequences:
the domain we consider is different---instead of natural numbers $NN$, we have
real numbers $RR$---, but the idea is the same; _we promise that, upon getting
very close to some point, the function values will get very close to some other
value_.

#block(
  title: "Limit of a function",
)[
  Given a function $f: RR -> RR$ and a point $a in RR$, we say that
  $lim_(x->a) f(x) = L$ if for every $epsilon > 0$ there exists a $delta > 0$
  such that if $0 < |x - a| < delta$ then $|f(x) - L| < epsilon$.
]

The above definition should read as follows, given a function $f$, a point
(not necessarily in the domain of $f$) $a$, a canditate limit $L$, and a
_tiny small distance_ $epsilon > 0$, there *must* exist a _tiny small
distance_ $delta > 0$ such that if we take any point $x$ _different_ from
$a$ but _very close_ to $a$ (i.e., $0 < |x - a| < delta$), then the
function value $f(x)$ is _very close_ to $L$ (i.e., $|f(x) - L| < epsilon$).

== One-sided limits (or lateral limits)

Sometimes, we are only interested in approaching a point $a$ from one side.
In that case, we can define _one-sided limits_. Just ignore the part of the
domain that is "not of interest".

#block(
  title: "One-sided limits of a function",
)[
  Given a function $f: RR -> RR$ and a point $a in RR$, we say that
  $lim_(x->a^+) f(x) = L$ if for every $epsilon > 0$ there exists a $delta > 0$
  such that if $0 < x - a < delta$ then $|f(x) - L| < epsilon$.
  Similarly, we say that $lim_(x->a^-) f(x) = L$ if for every $epsilon > 0$
  there exists a $delta > 0$ such that if $0 < a - x < delta$ then
  $|f(x) - L| < epsilon$.
]

The main change is the _"removal"_ of the absolute value in the condition
$0 < |x - a| < delta$.

= Continuity

Maybe you have been lied to earlier in your life, but continuity is not about
being able to draw a function without lifting your pencil from the paper.
#footnote[
  Planck's constant forbids this.
]
_Continuity_ is a preservation of a notion of _closeness_: if we take two points
that are very close to each other, then their function values must also be very
close to each other.
Continuity depends of several factors that can be explored later in life: what
concerns us if how this is related to functions.

In some sense, continuity is the expectation of the function to do what we
_intuitively_ expect it to do.

#block(
  title: "Continuity of a function at a point",
)[
  Given a function $f: RR -> RR$ and a point $a in dom(f)$, we say that $f$ is
  _continuous_ at $a$ if for every $epsilon > 0$ there exists a $delta > 0$
  such that if $|x - a| < delta$ then $|f(x) - f(a)| < epsilon$.
]

#block(
  title: "Continuity of a function",
)[
  Given a function $f: RR -> RR$, we say that $f$ is _continuous_ if it is
  continuous at every point $a in dom(f)$.
]

There are some monster of analysis that give me nightmares: we will not
explore them now, but they exist#footnote[
  See #link("https://en.wikipedia.org/wiki/Thomae%27s_function")[Thomae's function],
  #link("https://en.wikipedia.org/wiki/Weierstrass_function")[Weierstrass function],
  and #link("https://en.wikipedia.org/wiki/Cantor_function")[Cantor function] to
  name a few.
].
Below are some somewhat nice examples of continuous and discontinuous functions.

#columns(2)[
  #figure(
    lq.diagram(
      lq.plot(lq.linspace(-2, 2), x => x*x, mark: none),
    ),
    caption: [A continuous function: $f(x) = x^2$]
  )

  #figure(
    lq.diagram(
      lq.plot(lq.linspace(-2, -1), x => x*x, mark: none, color: psu-blue),
      lq.plot(lq.linspace(-1, 1), x => calc.abs(x), mark: none, color: psu-blue),
      lq.plot(lq.linspace(1, 2), x => x*x, mark: none, color: psu-blue),
    ),
    caption: [A not-so trivial continuous function: $f(x) = x^2$ if $|x| >= 1$, and $f(x) = |x|$ if $|x| < 1$]
  )

  #colbreak()

  #figure(
    lq.diagram(
      lq.plot(lq.linspace(-2, 0), x => -1, mark: none, color: psu-blue),
      lq.plot(lq.linspace(0, 2), x => 1, mark: none, color: psu-blue),
    ),
    caption: [A discontinuous function: $f(x) = -1$ if $x < 0$, and $f(x) = 1$ if $x >= 0$]
  )

  #figure(
    lq.diagram(
      lq.plot(lq.linspace(-2, -1), x => -1, mark: none, color: psu-blue),
      lq.plot(lq.linspace(-1, -0), x => 0, mark: none, color: psu-blue),
      lq.plot(lq.linspace(0, 1), x => 1, mark: none, color: psu-blue),
      lq.plot(lq.linspace(1, 2), x => 2, mark: none, color: psu-blue),
    ),
    caption: [A very discontinuous function: the ceiling function $f(x) = ceil(x) = min{ n in ZZ : n >= x }$],
  )
]

== Types of discontinuities

There are two main types of discontinuities: _removable_ and _essential_.
A _removable discontinuity_ is a discontinuity that can be "fixed" by
redefining the function at that point.
An _essential discontinuity_ is a discontinuity that cannot be fixed by
redefining the function at that point: there are jumps, asymptotes, oscillations,
among other things. We focus on _jump discontinuities_ and
_asymptotic discontinuities_.

= On the computation of limits and continuity

Usually, we ask ourselves the following questions when trying to determine
if a function is continuous at a point $a$:
- Is $f(a)$ defined? (i.e., is $a in dom(f)$?)
- Does $lim_(x->a) f(x)$ exist?
- If the above two questions have a positive answer, is $lim_(x->a) f(x) = f(a)$?

There are occasions where we won't have a continuous function: then, you may
need to explore if the discontinuity is removable or essential.
In case of a removable discontinuity, you may be asked to redefine the function
at that point in order to make it continuous.
In case of an essential discontinuity, you may be asked to classify it: is it 
a jump discontinuity? Show that the one-sided limits exist but are different;
is it an asymptotic discontinuity? Show the asymptotic behavior of the function
at that point.

== Examples

#block(
  title: "Removable discontinuities of rational functions",
  color: psu-purple,
)[
  Consider a function $f(x) = frac((x^2 - 1)(x+1), (x+1)^2)$.
  Its domain is $dom(f) = RR without {-1}$, _since we cannot divide by zero_.

  #figure(
    lq.diagram(
      lq.plot(lq.linspace(-3, -1.1, num: 10, include-end: true), x => (x*x - 1)*(x + 1)/((x + 1)*(x+1)), mark: none, color: psu-blue),
      lq.plot(lq.linspace(-0.9, 3, num: 10, include-end: true), x => (x*x - 1)*(x + 1)/((x + 1)*(x+1)), mark: none, color: psu-blue),
      lq.ellipse(-1, -2, width: 0.2, height: 0.2, stroke: psu-red, align: center),
    ),
    caption: [A removable discontinuity at $x = -1$],
  )

  If we work with values close to $x = -1$ but different from $-1$, we can do
  some algebra:
  $
  frac((x^2 - 1)(x+1), (x+1)^2) = frac((x-1)(x+1)(x+1), (x+1)(x+1)) = x - 1.
  $
  Thus, $lim_(x->-1) f(x) = lim_(x->-1) frac((x^2 - 1)(x+1), (x+1)^2) = lim_(x->-1) (x - 1) = -2$.

  Since $f(-1)$ is not defined, the function is not continuous at $x = -1$, *but* we can redefine it as
  $
  hat(f)(x) = cases(
    frac((x^2 - 1)(x+1), (x+1)^2) = x - 1 ", if" x eq.not -1 ",",
    -2 ", if" x = -1 "."
  )
  $
  This is equivalent to just defining $hat(f)(x) = x - 1$ for all $x in RR$.
]

#block(
  title: "Glueing and juxtaposition of functions",
  color: psu-purple,
)[
  We will consider two functions of different nature.
  Let
  $
  f(x) = cases(
    x^2 ", if" x < 0 ",",
    2 - x ", if" x >= 0 "."
  )
  quad " and " quad
  g(x) = cases(
    1/x ", if" x < 1 ",",
    x ", if" x >= 1 "."
  )
  $
  Their domains are $dom(f) = RR$ and $dom(g) = RR without {0}$.
  #columns(2)[
    #figure(
      lq.diagram(
        lq.plot(lq.linspace(-1, 0, num: 10, include-end: true), x => x*x, mark: none, color: psu-blue),
        lq.plot(lq.linspace(0, 1, num: 10, include-end: true), x => 2 - x, mark: none, color: psu-blue),
        lq.ellipse(0, 2, width: 0.1, height: 0.1, stroke: psu-red, align: center, fill: psu-red.lighten(50%)),
        lq.ellipse(0, 0, width: 0.1, height: 0.1, stroke: psu-red, align: center),
      ),
      caption: [A jump discontinuity at $x = 0$],
    )

    #colbreak()

    #figure(
      lq.diagram(
        lq.plot(lq.linspace(0.25, 1, num: 10, include-end: true), x => 1/x, mark: none, color: psu-blue),
        lq.plot(lq.linspace(1, 2, num: 10, include-end: true), x => x, mark: none, color: psu-blue),
        lq.ellipse(1, 1, width: 0.1, height: 0.1, stroke: psu-green, align: center),
      ),
      caption: [A continuous glueing at $x = 1$ (and an asymptotic discontinuity at $x = 0$).],
    )
  ]
  Consider the function $f$ first.
  Note that $f(0) = 2$ is defined! But $lim_(x->0^-) f(x) = 0$ and $lim_(x->0^+) f(x) = 2$.
  The lateral limits are different, so $lim_(x->0) f(x)$ does not exist; the existence of
  *both* lateral limits is enough to conclude that there is a jump discontinuity at $x = 0$.

  _On the other hand_, consider the function $g$.
  Note that $g(1) = 1$ is defined.
  Moreover, $lim_(x->1^-) g(x) = lim_(x->1^-) 1/x = 1$ and $lim_(x->1^+) g(x) = lim_(x->1^+) x = 1$.
  Thus, $lim_(x->1) g(x) = 1 = g(1)$, and the function is continuous at $x = 1$.

]

= Addendum: Examples of indeterminations

- *One raised to infinity*: $lim_(x->oo) (1 + frac(1,x))^x = e approx 2.71828$.
- *Zero raised to zero*: $lim_(x->0^+) x^x = 1$ (we will see thechniques to solve this later).
- *Infinity raised to zero*: $lim_(x->0^+) (1/x)^x = 1$ (see above).



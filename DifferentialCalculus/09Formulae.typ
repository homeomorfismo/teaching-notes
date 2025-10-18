#import "00Template.typ": *
#show: main_format

#let dne = "DNE"

#date_header
#make_title

#outline()

= Formulae

This is a brief summary of some common and required mathematical formulae.

== Algebraic manipulations

#block(
  title: "Basic arithmetic",
  color: psu-stone,
)[
  $
  frac(a + b, c)
  & = frac(a, c) + frac(b, c), wide " and " wide
  & frac(quad frac(a,c) quad, frac(b,d)) & = frac(a, c) frac(d, b)
  $
  where $a, b, c, d in RR$ and $c, d != 0$.
]

#block(
  title: "Exponents, powers, and roots",
  color: psu-stone,
)[
  $
  frac(a^m, a^n) & = a^(m - n), wide
  (a^m)^n & = a^(m n), wide
  (a b)^n & = a^n b^n, wide " and " wide
  root(m, a^n) & = a^(frac(n, m))
  $
  where $a, b in RR$ and $m, n in ZZ$ with $a != 0$.
]

#block(
  title: "Exponential and logarithmic functions",
  color: psu-stone,
)[
  $
  a^(x + y) & = a^x a^y, wide
  log_a (x y) & = log_a (x) + log_a (y), wide " and " wide
  log_a (x^y) & = y log_a (x)
  $
  where $a in RR$ with $a > 0$ and $a != 1$, and $x, y in RR$ with $x, y > 0$.
]

#block(
  title: "Differences formulae",
  color: psu-purple,
)[
  #grid(
    columns: (1fr, 1fr),
    align: center + horizon,
    [
      $
      a^2 - b^2 & = (a - b)(a + b),
      $
    ],
    [
      $
      a^3 - b^3 & = (a - b)(a^2 + a b + b^2), \
      a^3 + b^3 & = (a + b)(a^2 - a b + b^2)
      $
    ],
  )
  where $a, b in RR$.
  Upon writing $a = sqrt(x)$ and $b = sqrt(y)$ instead
  (or $a = root(3, x)$ and $b = root(3, y)$, respectively), we have
  #grid(
    columns: (1fr, 1fr),
    align: center + horizon,
    [
      $
      x - y & = (sqrt(x) - sqrt(y))(sqrt(x) + sqrt(y)),
      $
    ],
    [
      $
      x - y & = (root(3, x) - root(3, y))(root(3, x^2) + root(3, x y) + root(3, y^2)), \
      x + y & = (root(3, x) + root(3, y))(root(3, x^2) - root(3, x y) + root(3, y^2))
      $
    ],
  )
]

#block(
  title: "Quadratic formula",
  color: psu-purple,
)[
  For $a, b, c in RR$ with $a != 0$, the solutions to the quadratic equation
  $
  a x^2 + b x + c & = 0
  $
  are given by
  $
  x & = frac(-b plus.minus sqrt(b^2 - 4 a c), 2 a),
  $
  when the discriminant $Delta = b^2 - 4 a c >= 0$.
  In particular, this means that if $Delta >= 0$, we can factor the quadratic
  polynomial as
  $
  a x^2 + b x + c = a (x - x_1)(x - x_2)
  = a (x - frac(-b + sqrt(Delta), 2 a) )(x - frac(-b - sqrt(Delta), 2 a) ),
  $
  where $x_1$ and $x_2$ are the two solutions given above.

]

== Trigonometric identities

#block(
  title: "Basic definitions in terms of sine and cosine",
  color: psu-blue,
)[
  $
  tan(theta) & = frac(sin(theta), cos(theta)), wide
  cot(theta) & = frac(cos(theta), sin(theta)), wide
  sec(theta) & = frac(1, cos(theta)), wide " and " wide
  csc(theta) & = frac(1, sin(theta))
  $
  where $theta in RR$ with $theta != frac(pi, 2) + k pi$ for $k in ZZ$ for $tan(theta)$,
  $theta != k pi$ for $k in ZZ$ for $cot(theta)$,
  $theta != frac(pi, 2) + k pi$ for $k in ZZ$ for $sec(theta)$, and
  $theta != k pi$ for $k in ZZ$ for $csc(theta)$.
]

#block(
  title: "Pythagorean identities",
  color: psu-blue,
)[
  $
  sin^2(theta) + cos^2(theta) & = 1, wide
  1 + tan^2(theta) & = sec^2(theta), wide " and " wide
  1 + cot^2(theta) & = csc^2(theta)
  $
  where $theta in RR$ with $theta != frac(pi, 2) + k pi$ for $k in ZZ$ for $tan(theta)$ and $sec(theta)$,
  and $theta != k pi$ for $k in ZZ$ for $cot(theta)$ and $csc(theta)$.
]

#block(
  title: "Angle sum and difference identities",
  color: psu-blue,
)[
  $
  sin(alpha plus.minus beta) & = sin(alpha) cos(beta) plus.minus cos(alpha) sin(beta), \
  cos(alpha plus.minus beta) & = cos(alpha) cos(beta) minus.plus sin(alpha) sin(beta)
  $
  where $alpha, beta in RR$.
]

#block(
  title: "Double-angle identities",
  color: psu-blue,
)[
  $
  sin(2 theta) & = 2 sin(theta) cos(theta), \
  cos(2 theta) & = cos^2(theta) - sin^2(theta) = 2 cos^2(theta) - 1 = 1 - 2 sin^2(theta)
  $
  where $theta in RR$.
]

#block(
  title: "Half-angle identities",
  color: psu-blue,
)[
  $
  sin^2(frac(theta, 2)) & = frac(1 - cos(theta), 2), wide " and " wide
  cos^2(frac(theta, 2)) & = frac(1 + cos(theta), 2)
  $
  where $theta in RR$.
  You may take the positive or negative square root depending on the quadrant
  of $frac(theta, 2)$.
]

#block(
  title: "Product-to-sum identities",
  color: psu-blue,
)[
  $
  sin(alpha) sin(beta) & = frac(1, 2) [ cos(alpha - beta) - cos(alpha + beta) ], \
  cos(alpha) cos(beta) & = frac(1, 2) [ cos(alpha + beta) + cos(alpha - beta) ], \
  sin(alpha) cos(beta) & = frac(1, 2) [ sin(alpha + beta) + sin(alpha - beta) ]
  $
  where $alpha, beta in RR$.
]

#block(
  title: "Cofunction identities",
  color: psu-blue,
)[
  $
  sin(frac(pi, 2) - theta) & = cos(theta), wide &
  cos(frac(pi, 2) - theta) & = sin(theta), wide &
  tan(frac(pi, 2) - theta) & = cot(theta), \
  cot(frac(pi, 2) - theta) & = tan(theta), wide &
  sec(frac(pi, 2) - theta) & = csc(theta), wide " and " wide &
  csc(frac(pi, 2) - theta) & = sec(theta)
  $
  where $theta in RR$ with $theta != k pi$ for $k in ZZ$ for $tan(theta)$ and $cot(theta)$,
  and $theta != frac(pi, 2) + k pi$ for $k in ZZ$ for $sec(theta)$ and $csc(theta)$.
]

== Commonly used limits

We use the asymptotic converntion that if two lateral limits are infinite, but
with opposite signs, then the overall limit *does not exist*, which we denote by
$dne$.
Recall that, per convention, $-oo, +oo$ are *not real numbers*.

#block(
  title: "Extended real numbers arithmetic",
  color: psu-stone,
)[
  $
  a + (+oo) & = +oo, wide
  a + (-oo) & = -oo, wide
  a * (plus.minus oo) & =
  cases(
    plus.minus oo " if " a > 0,
    minus.plus oo " if " a < 0,
  ),
  $
  where $a in RR$ with $a != 0$.
]

#block(
  title: "Indeterminate forms",
  color: psu-red,
)[
  The following forms are *indeterminate* and require further analysis to
  evaluate the corresponding limits:
  $
  oo - oo, wide
  0 * oo, wide
  frac(0, 0), wide
  frac(oo, oo), wide
  1^oo, wide
  0^0, wide
  oo^0.
  $
  Most of these forms can be casted into the form $frac(0, 0)$
  or $frac(oo, oo)$.
]

#block(
  title: "Basic asymptotic limits",
  color: psu-green,
)[
  $
  limits(lim)_(n -> oo) frac(1, n) & = 0, &
  limits(lim)_(n -> oo) n & = +oo.
  $
  Let $r >= 0$ be a real number. Then,
  $
  limits(lim)_(n -> oo) r^n & =
  cases(
    0 " if " 0 <= r < 1,
    oo " if " r > 1,
    1 " if " r = 1.
  )
  $

  In the case of functions,
  $
  limits(lim)_(x -> 0^+) frac(1, x) & = +oo, wide " and " wide &
  limits(lim)_(x -> 0^-) frac(1, x) & = -oo.
  $
  thus,
  $
  limits(lim)_(x -> 0) frac(1, x) & = dne;
  $
  nevertheless,
  $
  limits(lim)_(x -> 0) frac(1, abs(x)) & = +oo.
  $
]

#block(
  title: "Other important limits",
  color: psu-green,
)[
  $
  limits(lim)_(x -> 0) frac(e^x - 1, x) & = 1, wide &
  limits(lim)_(x -> 0) frac(ln(1 + x), x) & = 1 wide " and " wide &
  limits(lim)_(x -> 0) frac(sin(x), x) & = 1.
  $
]

#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00Template.typ": *
#show: main_format

#date_header
#make_title

= Differentiation rules

#grid(
  columns: (2fr, 1fr),
  gutter: 1em,
  align: left,
  figure(
    table(
      columns: 2,
      stroke: (x, y) => if y == 0 {
        (bottom: 1pt + psu-forest-green)
      },
      align: left + horizon,
      table.header(
        [Function $f(x)$],
        [Derivative $f'(x)$]
      ),
      [$a(x) = C$], [$a'(x) = 0$],
      [$b(x) = x$], [$b'(x) = 1$],
      [$c(x) = x^r$], [$c'(x) = r x^(r-1)$],
      [$d(x) = e^x$], [$d'(x) = e^x$],
      [$f(x) = sin(x)$], [$f'(x) = cos(x)$],
      [$g(x) = cos(x)$], [$g'(x) = -sin(x)$],
    ),
    caption: "Common differentiation rules."
  ),
  [
    Here, $r in RR$ with $r != 0$, and $C in RR$ is a _fixed_ constant.
    Note that the exponential function $e^x$ is its own derivative: this is a
    _unique property_ of the exponential function.
  ]
)

#block(
  title: "Linearity of the derivative",
  color: psu-blue,
)[
  Given two differentiable functions $f(x)$ and $g(x)$, and two constants
  $alpha, beta in RR$, the derivative of their linear combination is given by
  $
  (alpha f(x) + beta g(x))' = alpha f'(x) + beta g'(x),
  $
  or, in Leibniz notation,
  $
  frac(dd(""), dd(x))(alpha f(x) + beta g(x)) = alpha frac(dd(f), dd(x))(x) + beta frac(dd(g), dd(x))(x).
  $
]

#block(
  title: "Product rule",
  color: psu-blue,
)[
  Given two differentiable functions $f(x)$ and $g(x)$, the derivative of
  their product is given by
  $
  (f(x) g(x))' = f'(x) g(x) + f(x) g'(x),
  $
  or, in Leibniz notation,
  $
  frac(dd(""), dd(x))(f(x) g(x)) = frac(dd(f), dd(x))(x) g(x) + f(x) frac(dd(g), dd(x))(x).
  $
]

#block(
  title: "Quotient rule",
  color: psu-blue,
)[
  Given two differentiable functions $f(x)$ and $g(x)$, with $g(x) != 0$,
  the derivative of their quotient is given by
  $
  (frac(f(x), g(x)))' = frac(f'(x) g(x) - f(x) g'(x), (g(x))^2),
  $
  or, in Leibniz notation,
  $
  frac(dd(""), dd(x))(frac(f(x), g(x))) = frac(frac(dd(f), dd(x))(x) g(x) - f(x) frac(dd(g), dd(x))(x), (g(x))^2).
  $
  This formula can be deriverd using the product rule and the fact that
  $frac(1, g(x)) = (g(x))^(-1)$.
]

#block(
  title: "Chain rule",
  color: psu-blue,
)[
  Given two differentiable functions $f(u)$ and $g(x)$, the derivative of
  their composition is given by
  $
  (f(g(x)))' = f'(g(x)) g'(x),
  $
  or, in Leibniz notation,
  $
  frac(dd(""), dd(x))(f(g(x))) = frac(dd(f), dd(u))(g(x)) frac(dd(g), dd(x))(x).
  $
]

#block(
  title: "Inverse function rule",
  color: psu-blue,
)[
  Given a differentiable function $f(x)$ with a differentiable inverse
  function $f^(-1)(x)$, the derivative of the inverse function is given by
  $
  (f^(-1)(x))' = frac(1, f'(f^(-1)(x))),
  $
  or, in Leibniz notation,
  $
  frac(dd(""), dd(x))(f^(-1)(x)) = frac(1, frac(dd(f), dd(x))(f^(-1)(x))).
  $

  This can be proved using the chain rule and the fact that
  $
  f(f^(-1)(x)) = x.
  $
  Indeed, differentiating both sides with respect to $x$ gives
  $
  1 & = frac(dd(""), dd(x))x \
    & = frac(dd(""), dd(x))(f(f^(-1)(x))) \
    & = frac(dd(f), dd(x))(f^(-1)(x)) frac(dd(f^(-1)), dd(x))(x),
  $
  from which the result follows by rearranging.
]

= Inverse functions rules

#figure(
  table(
    columns: 3,
    stroke: (x, y) => if y == 0 {
      (bottom: 1pt + psu-forest-green)
    },
    align: left + horizon,
    table.header(
      [Function $f(x)$],
      [Inverse function $f^(-1)(x)$],
      [Derivative of the inverse $(f^(-1)(x))$]
    ),
    [$f(x) = e^x$], [$f^(-1)(x) = ln(x)$], [$ (f^(-1)(x))' = frac(1, x)$],
    [$f(x) = sin(x)$], [$f^(-1)(x) = arcsin(x)$], [$ (f^(-1)(x))' = frac(1, sqrt(1 - x^2))$],
    [$f(x) = cos(x)$], [$f^(-1)(x) = arccos(x)$], [$ (f^(-1)(x))' = -frac(1, sqrt(1 - x^2))$],
    [$f(x) = tan(x)$], [$f^(-1)(x) = arctan(x)$], [$ (f^(-1)(x))' = frac(1, 1 + x^2)$],
  ),
  caption: "Common differentiation rules for inverse functions."
)


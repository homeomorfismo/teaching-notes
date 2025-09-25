#import "00Template.typ": *
#show: main_format

#place(
  top + center,
  scope: "parent",
  float: true,
  [
    #date_header
    #make_title
  ]
)

= Reminders

== Limits of sequences

- $lim_(n->oo) c = c$
- $lim_(n->oo) frac(1,n) = 0$, and more generally, $lim_(n->oo) frac(n^k,n^m) = 0$ if $k < m$
- *Euler's number*: $lim_(n->oo) (1 + frac(1,n))^n = e approx 2.71828$
- *Sine limit*: $lim_(n->oo) n sin(frac(1,n)) = 1$
- If $abs(r) < 1$, then $lim_(n->oo) r^n = 0$, if $abs(r) > 1$, then $lim_(n->oo) r^n$ does not exist.

== Limits of functions

- $lim_(x->a) x = a$
- If $f(x) = g(x)$ when $x eq.not a$ and $lim_(x->a) g(x)$ exists, then $lim_(x->a) f(x) = lim_(x->a) g(x)$
- $lim_(x->a) [f(x) + g(x)] = lim_(x->a) f(x) + lim_(x->a) g(x)$, provided both limits on the right side exist
- $lim_(x->a) [f(x) dot g(x)] = lim_(x->a) f(x) dot lim_(x->a) g(x)$, provided both limits on the right side exist
- *Euler's number*: $lim_(x->0) (1 + x)^(1/x) = e approx 2.71828$
- *Sine limit*: $lim_(x->0) frac(sin x, x) = 1$

= Exercises

== Limit of sequences

=== Describe the behavior of the sequence

Describe the behavior of the sequence whose $n$-th term is given by the formula.
In particular, determine whether the sequence converges or diverges.

#columns(2)[
  - $1, 3, 5, 7, 9, ...$
  - $-1, 1, -1, 1, -1, ...$
  - $1, frac(1,2), frac(1,3), frac(1,4), frac(1,5), ...$
  #colbreak()
  - $1, 2, 4, 8, 16, ...$
  - $frac(1,pi), frac(1,2 pi), frac(1, 3pi), frac(1,4 pi), ...$
  - $0, frac(7,8), frac(26,27), frac(63,64), frac(124,125), ...$
]

=== Compute the limit of the sequence

Compute the limit of the sequence whose $n$-th term is given by the formula.
If the limit does not exist, explain why.

#columns(2)[
  - $x_n = frac(3n^2 + 2n, 5n^2 + n + 7)$
  - $y_n = frac((n+1)(n+2)(n+3), n^3)$
  - $z_n = frac(3n^3, 2n^2 + 1)$
  #colbreak()
  - $a_n = sqrt(n +1) - sqrt(n)$
  - $b_n = frac(n + (-1)^n, n - (-1)^n)$
  - $c_n = frac(2^n + 5^(n+1), 4^n + 5^n)$
]

== Limit of functions

=== Compute the limit of the function

Compute the limit of the function as $x$ approaches the given value.
If the limit does not exist, explain why.

#columns(2)[
  - $lim_(x->oo) frac((x+1)^2, x^2 + 1)$
  - $lim_(x->oo) frac(1000 x, x^2 + 1)$
  - $lim_(x->oo) frac(x^2 - 5 x + 1, 3x + 7)$
  #colbreak()
  - $lim_(x->oo) frac((2x+3)^3 (3x-2)^2, (5x+1)^5)$
  - $lim_(x->oo) frac(root(3, x^2 + 1), x + 1)$
  - $lim_(x->oo) frac(sqrt(x), sqrt(x + sqrt(x + sqrt(x))))$
]

==== Polynomial limits and factoring

In the case of $frac(P(x), Q(x))$, where $P(x)$ and $Q(x)$ are polynomials,
the limit as $x->a$ depends on the values of $P(a)$ and $Q(a)$.
Verify if there is an indeterminate form, and then apply algebraic
simplifications if needed.

#columns(2)[
  - $lim_(x-> -1) frac(x^3 + 1, x^2 + 1)$
  - $lim_(x-> -1) frac(x^2 - 1, x^2 + 3x + 2)$
  - $lim_(x-> 2) frac(x^2 - 2 x, x^2 - 4 x + 4)$
  #colbreak()
  - $lim_(x-> a) frac(x^2 - (a + 1) x + a, x^3 - a^3)$
  - $lim_(h-> 0) frac((x+h)^2 - x^2, h)$
  - $lim_(h-> 0) frac((x+h)^3 - x^3, h)$
]

==== Rationalizing the numerator or denominator

At times, in more generic limit of the form $frac(f(x), g(x))$, where
$f(a) = g(a) = 0$, it is possible to simplify the expression by
rationalizing the numerator or the denominator.

#columns(2)[
  - $lim_(x-> 7) frac(2 - sqrt(x - 3), x^2 - 49)$
  - $lim_(x-> 4) frac(3 - sqrt(5 + x), 1 - sqrt(5 - x))$
  #colbreak()
  - $lim_(x-> 0) frac(sqrt(1 + x) - sqrt(1 - x), x)$
  - $lim_(x-> 8) frac(x - 8, root(3, x) - 2)$
]

==== Trigonometric limits

Remember the identities $sin^2(x) + cos^2(x) = 1$, $tan(x) = frac(sin x, cos x)$,
$cot(x) = frac(cos(x), sin(x))$, $sec(x) = frac(1, cos(x))$, and $csc(x) = frac(1, sin(x))$.
Keep in mind co-function identities such as $sin(frac(pi,2) - x) = cos(x)$ and
$cos(frac(pi,2) - x) = sin(x)$, and sum-of-angle identities such as
$sin(a + b) = sin(a) cos(b) + cos(a) sin(b)$ and
$cos(a + b) = cos(a) cos(b) - sin(a) sin(b)$.
Furthermore, remember that the "arc" functions are the inverses of the
trigonometric functions.

#columns(2)[
  - $lim_(x-> 0) frac(sin(3x),x)$
  - $lim_(x-> pi) frac(cos(x),x)$
  #colbreak()
  - $lim_(x-> 0) frac(tan(5x), sin(2x))$
  - $lim_(x-> 0) frac(arcsin(x), x)$
]

=== Exponencial limits

When dealing with limits involving exponenciation $f(x)^(g(x))$, it is often
useful to do a rewriting.
Remember that $e^z = lim_(x->oo) (1 + frac(z,x))^x$.
The trick is to rewrite $f(x) = 1 + alpha(x)$, where $alpha(x) -> 0$ as $x -> a$,
so that $f(x)^(g(x)) = (1 + alpha(x))^(g(x)) = ((1 + alpha(x))^(1/alpha(x)))^(g(x) dot alpha(x))$.
Then, if the limit of $g(x) dot alpha(x)$ exists, we have
$lim_(x->a) f(x)^(g(x)) = e^(lim_(x->a) (g(x) dot alpha(x)))$.


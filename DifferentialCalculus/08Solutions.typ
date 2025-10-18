#import "00Template.typ": *
#show: main_format

#date_header
#make_title

#outline()

= Selected solutions to exercises

== Limit of sequences

=== Describe the behavior of the sequence

Describe the behavior of the sequence whose $n$-th term is given by the formula.
In particular, determine whether the sequence converges or diverges.

- $1, 3, 5, 7, 9, ...$ 
  #block(
    title: "Solution",
  )[
    Notice that the _increment_ between consecutive terms is constant and
    equal to $2$, and the _base term_ is $1$.
    Therefore, the $n$-th term of the sequence is given by the formula
    $a_n = 1 + (n-1)2 = 2n - 1$.
    Since $lim_(n->oo) (2n - 1) = oo$, the sequence diverges to infinity.
  ]

- $1, frac(1,2), frac(1,3), frac(1,4), frac(1,5), ...$
  #block(
    title: "Solution",
  )[
    Notice that the $n$-th term of the sequence is the reciprocal of its index,
    that is, $a_n = frac(1,n)$.
    Since $lim_(n->oo) frac(1,n) = 0$, the sequence converges to $0$.
  ]

- $0, frac(7,8), frac(26,27), frac(63,64), frac(124,125), ...$
  #block(
    title: "Solution",
  )[
    Notice that the denominators are all perfect cubes, and that the numerators
    are one less than the denominators.
    Therefore, the $n$-th term of the sequence is given by the formula
    $a_n = frac(n^3 - 1, n^3)$.
    Since $lim_(n->oo) frac(n^3 - 1, n^3) = lim_(n->oo) (1 - frac(1,n^3)) = 1 - 0 = 1$,
    the sequence converges to $1$.
  ]

#pagebreak()

=== Compute the limit of the sequence

Compute the limit of the sequence whose $n$-th term is given by the formula.
If the limit does not exist, explain why.

- $x_n = frac(3n^2 + 2n, 5n^2 + n + 7)$
  #block(
    title: "Solution",
  )[
    To compute the limit, we divide the numerator and denominator by $n^2$,
    the highest power of $n$ in the denominator:
    $
    lim_(n->oo) frac(3n^2 + 2n, 5n^2 + n + 7)
    & = lim_(n->oo) frac(frac(3n^2,n^2) + frac(2n,n^2), frac(5n^2,n^2) + frac(n,n^2) + frac(7,n^2)) \
    & = lim_(n->oo) frac(3 + frac(2,n), 5 + frac(1,n) + frac(7,n^2)) \
    & = frac(lim_(n->oo) (3 + frac(2,n)), lim_(n->oo) (5 + frac(1,n) + frac(7,n^2))) \
    & = frac(3 + 0, 5 + 0 + 0) \
    & = frac(3,5).
    $
    Therefore, the sequence converges to $frac(3,5)$.
  ]
  #block(
    title: "Observations",
    color: psu-purple,
  )[
    1. Notice that _computing the limit_ of a rational function is easy if we
       consider _three cases_:
         - if the degree of the numerator is _less_ than the degree of the denominator,
           then the limit is $0$. For example,
           $
           lim_(x->oo) frac(x^2 + 2x + 1, 5x^3 + x + 7) = 0.
           $
         - if the degree of the numerator is _equal_ to the degree of the denominator,
           then the limit is the ratio of the leading coefficients. For example,
           $
           lim_(x->oo) frac(3x^3 + 2x, 5x^3 + x + 7) = frac(3,5).
           $
         - if the degree of the numerator is _greater_ than the degree of the denominator,
           then the limit is $oo$ (or $-oo$). For example,
           $
           lim_(x->oo) frac(3x^4 + 2x, 5x^3 + x + 7) & = oo, quad " and " quad &
           lim_(x-> -oo) frac(3x^4 + 2x, 5x^3 + x + 7) & = -oo.
           $
    2. Notice how we *carry* the limit symbol throughout the computation.
       This is important because it helps us avoid mistakes: we can only
       remove the limit symbol when we have eliminated all occurrences
       of the variable $n$ (or $x$, or $h$, etc.) from the expression.
]

#pagebreak()

- $y_n = frac((n+1)(n+2)(n+3), n^3)$
  #block(
    title: "Solution",
  )[
    To compute the limit, we could divide the numerator and denominator by $n^3$,
    the highest power of $n$ in the denominator, but in this case it is easier
    to distribute the denominator _evenly_ among the factors in the numerator
    as $n^3 = n * n * n$:
    $
    lim_(n->oo) frac((n+1)(n+2)(n+3), n^3)
    & = lim_(n->oo) (frac(n+1,n)) (frac(n+2,n)) (frac(n+3,n)) \
    & = lim_(n->oo) (1 + frac(1,n)) (1 + frac(2,n)) (1 + frac(3,n)) \
    & = (lim_(n->oo) (1 + frac(1,n))) (lim_(n->oo) (1 + frac(2,n))) (lim_(n->oo) (1 + frac(3,n))) \
    & = (1 + 0) (1 + 0) (1 + 0) \
    & = 1.
    $
    Therefore, the sequence converges to $1$.
  ]

- $a_n = sqrt(n +1) - sqrt(n)$
  #block(
    title: "Solution",
  )[
    To compute the limit, we rationalize the expression:
    $
    lim_(n->oo) (sqrt(n +1) - sqrt(n))
    & = lim_(n->oo) frac((sqrt(n +1) - sqrt(n))(sqrt(n +1) + sqrt(n)), sqrt(n +1) + sqrt(n)) \
    & = lim_(n->oo) frac((n + 1) - n, sqrt(n +1) + sqrt(n)) \
    & = lim_(n->oo) frac(1, sqrt(n +1) + sqrt(n)) \
    & = lim_(n->oo) frac(sqrt(frac(1,n)), sqrt(frac(n +1,n)) + sqrt(frac(n,n))) \
    & = frac(sqrt(lim_(n->oo) frac(1,n)), sqrt(1 + lim_(n->oo) frac(1,n)) + 1) \
    & = frac(0, sqrt(1 + 0) + 1) \
    & = 0.
    $
    Therefore, the sequence converges to $0$, due to the _continuity of the
    square root function_ (we take our standard functions to be _continuous for
    granted_).
  ]

#pagebreak()

- $c_n = frac(2^n + 5^(n+1), 4^n + 5^n)$
  #block(
    title: "Solution",
  )[
    To compute the limit, we divide the numerator and denominator by $5^n$,
    the highest power of $n$ in the denominator:
    $
    lim_(n->oo) frac(2^n + 5^(n+1), 4^n + 5^n)
    & = lim_(n->oo) frac(frac(2^n,5^n) + frac(5^(n+1),5^n), frac(4^n,5^n) + frac(5^n,5^n)) \
    & = lim_(n->oo) frac((frac(2,5))^n + 5, (frac(4,5))^n + 1) \
    & = frac(lim_(n->oo) (frac(2,5))^n + lim_(n->oo) 5, lim_(n->oo) (frac(4,5))^n + lim_(n->oo) 1) \
    & = frac(0 + 5, 0 + 1) \
    & = 5.
    $
    Therefore, the sequence converges to $5$.
    We take for granted that $lim_(n->oo) r^n = 0$ for any real number
    $r$ such that $-1 < r < 1$ (and that $lim_(n->oo) r^n = oo$ for any real
    number $r > 1$).
  ]

== Limit of functions

=== Compute the limit of the function

Compute the limit of the function as $x$ approaches the given value.
If the limit does not exist, explain why.

- $lim_(x->oo) frac((x+1)^2, x^2 + 1)$
  #block(
    title: "Solution",
  )[
    To compute the limit, we divide the numerator and denominator by $x^2$,
    the highest power of $x$ in the denominator.
    You may choose to expand the numerator first, but it is not necessary.
    $
    lim_(x->oo) frac((x+1)^2, x^2 + 1)
    & = lim_(x->oo) frac(frac((x+1)^2,x^2), frac(x^2,x^2) + frac(1,x^2)) \
    & = lim_(x->oo) frac((1 + frac(1,x))^2, 1 + frac(1,x^2)) \
    & = frac( (1 + lim_(x->oo) frac(1,x))^2, 1 + lim_(x->oo) frac(1,x^2)) \
    & = frac((1 + 0)^2, 1 + 0) \
    & = 1.
    $
    Therefore, the limit is $1$.
  ]

#pagebreak()

- $lim_(x->oo) frac(root(3, x^2 + 1), x + 1)$
  #block(
    title: "Solution",
  )[
    To compute the limit, we divide the numerator and denominator by $x$,
    the highest power of $x$ in the denominator.
    $
    lim_(x->oo) frac(root(3, x^2 + 1), x + 1)
    & = lim_(x->oo) frac(frac(root(3, x^2 + 1), x), frac(x,x) + frac(1,x)) \
    & = lim_(x->oo) frac(root(3, frac(x^2 + 1,x^3)), 1 + frac(1,x)) \
    & = frac(root(3, lim_(x->oo) frac(x^2 + 1,x^3)), 1 + lim_(x->oo) frac(1,x)) \
    & = frac(root(3, lim_(x->oo) (frac(1,x) + frac(1,x^3))), 1 + 0) \
    & = frac(root(3, 0 + 0), 1 + 0) \
    & = 0.
    $
    Therefore, the limit is $0$.
  ]

#pagebreak()

- $lim_(x->oo) frac(sqrt(x), sqrt(x + sqrt(x + sqrt(x))))$
  #block(
    title: "Solution",
  )[
    To compute the limit, we divide the numerator and denominator by $sqrt(x)$,
    the highest power of $x$ in the denominator.
    $
    lim_(x->oo) frac(sqrt(x), sqrt(x + sqrt(x + sqrt(x))))
    & = lim_(x->oo) frac(frac(sqrt(x), sqrt(x)), frac(sqrt(x + sqrt(x + sqrt(x))), sqrt(x))) \
    & = lim_(x->oo) frac(1, sqrt(frac(x + sqrt(x + sqrt(x)), x))) \
    & = frac(1, sqrt(1 + lim_(x->oo) frac(sqrt(x + sqrt(x)), x))) \
    & = frac(1, sqrt(1 + lim_(x->oo) frac(sqrt(x + sqrt(x)), sqrt(x^2)))) \
    & = frac(1, sqrt(1 + lim_(x->oo) sqrt(frac(x + sqrt(x), x^2)))) \
    & = frac(1, sqrt(1 + lim_(x->oo) sqrt(frac(1,x) + frac(sqrt(x), x^2)))) \
    & = frac(1, sqrt(1 + lim_(x->oo) sqrt(frac(1,x) + sqrt(frac(1,x^3))))) \
    & = frac(1, sqrt(1 + sqrt(0 + 0))) \
    & = 1.
    $
    Therefore, the limit is $1$.
  ]

#pagebreak()

- $lim_(x->oo) frac((2x+3)^3 (3x-2)^2, (5x+1)^5)$
  #block(
    title: "Solution",
  )[
    To compute the limit, we divide the numerator and denominator by $x^5$,
    the highest power of $x$ in the denominator.
    $
    lim_(x->oo) frac((2x+3)^3 (3x-2)^2, (5x+1)^5)
    & = lim_(x->oo) frac(frac((2x+3)^3, x^3) frac((3x-2)^2, x^2), frac((5x+1)^5, x^5)) \
    & = lim_(x->oo) frac((frac(2x+3,x))^3 (frac(3x-2,x))^2, (frac(5x+1,x))^5) \
    & = frac((lim_(x->oo) (frac(2x+3,x)))^3 (lim_(x->oo) (frac(3x-2,x)))^2, (lim_(x->oo) (frac(5x+1,x)))^5) \
    & = frac((lim_(x->oo) (2 + frac(3,x)))^3 (lim_(x->oo) (3 - frac(2,x)))^2, (lim_(x->oo) (5 + frac(1,x)))^5) \
    & = frac((2 + 0)^3 (3 - 0)^2, (5 + 0)^5) \
    & = frac(2^3 * 3^2, 5^5)
    $
    Therefore, the limit is $frac(2^3 * 3^2, 5^5)$.
  ]

#pagebreak()

==== Polynomial limits and factoring

In the case of $frac(P(x), Q(x))$, where $P(x)$ and $Q(x)$ are polynomials,
the limit as $x->a$ depends on the values of $P(a)$ and $Q(a)$.
Verify if there is an indeterminate form, and then apply algebraic
simplifications if needed.

- $lim_(x-> -1) frac(x^3 + 1, x^2 + 1)$
  #block(
    title: "Solution",
  )[
    Since $(-1)^3 + 1 = 0$ and $(-1)^2 + 1 = 2$, we have
    $
    lim_(x-> -1) frac(x^3 + 1, x^2 + 1) = frac(lim_(x-> -1) (x^3 + 1), lim_(x-> -1) (x^2 + 1)) = frac(0, 2) = 0.
    $
    Therefore, the limit is $0$.
  ]

- $lim_(x-> -1) frac(x^2 - 1, x^2 + 3x + 2)$
  #block(
    title: "Solution",
  )[
    Since $(-1)^2 - 1 = 0$ and $(-1)^2 + 3(-1) + 2 = 0$, we have an indeterminate form
    $frac(0,0)$.
    To compute the limit, we factor the numerator and denominator:
    $
    lim_(x-> -1) frac(x^2 - 1, x^2 + 3x + 2)
    & = lim_(x-> -1) frac((x - 1)(x + 1), (x + 1)(x + 2)) \
    & = lim_(x-> -1) frac(x - 1, x + 2) quad " (after canceling the common factor "x + 1" )" \
    & = frac(lim_(x-> -1) (x - 1), lim_(x-> -1) (x + 2)) \
    & = frac(-1 - 1, -1 + 2) \
    & = frac(-2, 1) \
    & = -2.
    $
    Therefore, the limit is $-2$.
  ]

- $lim_(x-> 2) frac(x^2 - 2 x, x^2 - 4 x + 4)$
  #block(
    title: "Solution",
  )[
    Since $2^2 - 2*2 = 0$ and $2^2 - 4*2 + 4 = 0$, we have an indeterminate form
    $frac(0,0)$.
    To compute the limit, we factor the numerator and denominator:
    $
    lim_(x-> 2) frac(x^2 - 2 x, x^2 - 4 x + 4)
    & = lim_(x-> 2) frac(x(x - 2), (x - 2)(x - 2)) \
    & = lim_(x-> 2) frac(x, x - 2) quad " (after canceling the common factor "x - 2" )" \
    & = lim_(x-> 2) frac((x - 2) + 2, x - 2) \
    & = lim_(x-> 2) (1 + frac(2, x - 2)) \
    & = 1 + lim_(x-> 2) frac(2, x - 2).
    $
    The existence of the limit $lim_(x-> 2) frac(x^2 - 2 x, x^2 - 4 x + 4)$
    depends on the existence of the limit $lim_(x-> 2) frac(2, x - 2)$.
    Since $lim_(x-> 2^-) frac(2, x - 2) = -oo$ and
    $lim_(x-> 2^+) frac(2, x - 2) = +oo$, the limit does not exist.
  ]

- $lim_(x-> a) frac(x^2 - (a + 1) x + a, x^3 - a^3)$
  #block(
    title: "Solution",
  )[
    Since $a^2 - (a + 1) a + a = 0$ and $a^3 - a^3 = 0$, we have an indeterminate form
    $frac(0,0)$.
    To compute the limit, we factor the numerator and denominator:
    $
    lim_(x-> a) frac(x^2 - (a + 1) x + a, x^3 - a^3)
    & = lim_(x-> a) frac((x - a)(x - 1), (x - a)(x^2 + a x + a^2)) \
    & = lim_(x-> a) frac(x - 1, x^2 + a x + a^2) quad " (after canceling the common factor "x - a" )" \
    & = frac(lim_(x-> a) (x - 1), lim_(x-> a) (x^2 + a x + a^2)) \
    & = frac(a - 1, a^2 + a*a + a^2) \
    & = frac(a - 1, 3a^2).
    $
    Therefore, the limit is $frac(a - 1, 3a^2)$, provided that $a != 0$.
  ]
  #block(
    title: "Observations",
    color: psu-purple,
  )[
    1. Note that the limit depends on the value of $a$, and is not defined for $a = 0$.
       In that case, the original expression becomes $frac(x^2 - x, x^3)$,
       and the limit does not exist.
    2. Notice that _verifying for an indetermination_ hinted us to _factor_ the
       expression: if $x->a$, it is likely that both the numerator and
       denominator vanish at $x = a$, thus, having a common factor of $x - a$.
       $
       frac(P(x), Q(x)) = frac((x - a) P_1(x), (x - a) Q_1(x)) = frac(P_1(x), Q_1(x)).
       $
    3. *Long division* is another useful tool to factor polynomials: it is
       based on the _euclidean algorithm for polynomial division_.
       For example, to factor $x^3 - a^3$, we can divide $x^3 - a^3$ by
       $x - a$ to obtain the quotient $x^2 + a x + a^2$ and the remainder $0$,
       thus
         $
         x^3 - a^3 = (x - a)(x^2 + a x + a^2) + 0 = (x - a)(x^2 + a x + a^2).
         $
  ]

#pagebreak()

- $lim_(h-> 0) frac((x+h)^3 - x^3, h)$
  #block(
    title: "Solution",
  )[
    Since $(x+0)^3 - x^3 = 0$, we have an indeterminate form $frac(0,0)$.
    To compute the limit, we expand the numerator.
    You may choose to factor the numerator instead, both approaches work.
    $
    lim_(h-> 0) frac((x+h)^3 - x^3, h)
    & = lim_(h-> 0) frac(x^3 + 3x^2 h + 3x h^2 + h^3 - x^3, h) \
    & = lim_(h-> 0) frac(3x^2 h + 3x h^2 + h^3, h) \
    & = lim_(h-> 0) frac(h(3x^2 + 3x h + h^2), h) \
    & = lim_(h-> 0) (3x^2 + 3x h + h^2) quad " (after canceling the common factor "h" )" \
    & = 3x^2 + 3x * lim_(h-> 0) h + lim_(h-> 0) h^2 \
    & = 3x^2 + 3x * 0 + 0^2 \
    & = 3x^2.
    $
    Therefore, the limit is $3x^2$.
    Notice that this expression depends on $x$, which is treated as a constant
    during the computation of the limit with respect to $h$.
    This limit is also known as the _derivative of the function_ $f(x) = x^3$
    _at the point_ $x$.
  ]

==== Rationalizing the numerator or denominator

At times, in more generic limit of the form $frac(f(x), g(x))$, where
$f(a) = g(a) = 0$, it is possible to simplify the expression by
rationalizing the numerator or the denominator.

- $lim_(x-> 7) frac(2 - sqrt(x - 3), x^2 - 49)$
  #block(
    title: "Solution",
  )[
    Since $2 - sqrt(7 - 3) = 0$ and $7^2 - 49 = 0$, we have an indeterminate form
    $frac(0,0)$.
    To compute the limit, we rationalize the numerator:
    $
    lim_(x-> 7) frac(2 - sqrt(x - 3), x^2 - 49)
    & = lim_(x-> 7) frac((2 - sqrt(x - 3))(2 + sqrt(x - 3)), (x^2 - 49)(2 + sqrt(x - 3))) \
    & = lim_(x-> 7) frac(7 - x, (x^2 - 49)(2 + sqrt(x - 3))) \
    & = lim_(x-> 7) frac(-(x - 7), ((x - 7)(x + 7))(2 + sqrt(x - 3))) \
    & = lim_(x-> 7) frac(-1, (x + 7)(2 + sqrt(x - 3))) quad " (after canceling the common factor "x - 7" )" \
    & = frac(-1, (7 + 7)(2 + sqrt(7 - 3)))  = frac(-1, 14 * (2 + sqrt(4)))  = frac(-1, 14 * (2 + 2)) = frac(-1, 56).
    $
    Therefore, the limit is $frac(-1, 56)$.
  ]

#pagebreak()

- $lim_(x-> 4) frac(3 - sqrt(5 + x), 1 - sqrt(5 - x))$
  #block(
    title: "Solution",
  )[
    Since $3 - sqrt(5 + 4) = 0$ and $1 - sqrt(5 - 4) = 0$, we have an indeterminate form
    $frac(0,0)$.
    To compute the limit, we rationalize the _denominator first_:
    $
    lim_(x-> 4) frac(3 - sqrt(5 + x), 1 - sqrt(5 - x))
    & = lim_(x-> 4) frac((3 - sqrt(5 + x))(1 + sqrt(5 - x)), (1 - sqrt(5 - x))(1 + sqrt(5 - x))) \
    & = lim_(x-> 4) frac((3 - sqrt(5 + x))(1 + sqrt(5 - x)), 1 - (5 - x)) \
    & = lim_(x-> 4) frac((3 - sqrt(5 + x))(1 + sqrt(5 - x)), x - 4) \
    $
    Now it is more clear to see where the indeterminate form comes from.
    *Without expanding the numerator*, we rationalize the _numerator_.
    Focus your attention on the factor from the original numerator:
    $
    lim_(x-> 4) frac(3 - sqrt(5 + x), 1 - sqrt(5 - x))
    & = lim_(x-> 4) frac((3 - sqrt(5 + x))(1 + sqrt(5 - x)), x - 4) \
    & = lim_(x-> 4) frac((3 - sqrt(5 + x))(1 + sqrt(5 - x))(3 + sqrt(5 + x)), (x - 4)(3 + sqrt(5 + x))) \
    & = lim_(x-> 4) frac((9 - (5 + x))(1 + sqrt(5 - x)), (x - 4)(3 + sqrt(5 + x))) \
    & = lim_(x-> 4) frac(-(x-4)(1 + sqrt(5 - x)), (x - 4)(3 + sqrt(5 + x))) \
    & = lim_(x-> 4) frac(-(1 + sqrt(5 - x)), (3 + sqrt(5 + x))) quad " (after canceling the common factor "x - 4" )" \
    & = frac(-(1 + sqrt(5 - 4)), (3 + sqrt(5 + 4)))  = frac(-(1 + sqrt(1)), (3 + sqrt(9)))  = frac(-(1 + 1), (3 + 3)) = frac(-2, 6) = frac(-1, 3).
    $
    Therefore, the limit is $frac(-1, 3)$.
  ]

#pagebreak()

- $lim_(x-> 8) frac(x - 8, root(3, x) - 2)$
  #block(
    title: "Solution",
  )[
    Since $8 - 8 = 0$ and $root(3, 8) - 2 = 0$, we have an indeterminate form
    $frac(0,0)$.
    To compute the limit, we rationalize the denominator:
    $
    lim_(x-> 8) frac(x - 8, root(3, x) - 2)
    & = lim_(x-> 8) frac((x - 8)(root(3, x)^2 + 2 root(3, x) + 4), (root(3, x) - 2)(root(3, x)^2 + 2 root(3, x) + 4)) \
    & = lim_(x-> 8) frac((x - 8)(root(3, x)^2 + 2 root(3, x) + 4), x - 8) \
    & = lim_(x-> 8) (root(3, x)^2 + 2 root(3, x) + 4) quad " (after canceling the common factor "x - 8" )" \
    & = (root(3, 8))^2 + 2 * root(3, 8) + 4  = 2^2 + 2 * 2 + 4  = 4 + 4 + 4  = 12.
    $
    Therefore, the limit is $12$.
  ]

==== Trigonometric limits

- $lim_(x-> 0) frac(sin(3x),x)$
  #block(
    title: "Solution",
  )[
    To compute the limit, we use the standard limit $lim_(x-> 0) frac(sin(x), x) = 1$:
    $
    lim_(x-> 0) frac(sin(3x),x)
    & = lim_(x-> 0) frac(3 sin(3x), 3x) \
    & = 3 * lim_(x-> 0) frac(sin(3x), 3x) \
    & = 3 * 1 \
    & = 3.
    $
    Therefore, the limit is $3$.
  ]

- $lim_(x-> pi) frac(cos(x),x)$
  #block(
    title: "Solution",
  )[
    Since $cos(pi) = -1$, we simply evaluate the limit directly:
    $
    lim_(x-> pi) frac(cos(x),x) = frac(-1, pi).
    $
    Therefore, the limit is $frac(-1, pi)$.
  ]

#pagebreak()

- $lim_(x-> 0) frac(tan(5x), sin(2x))$
  #block(
    title: "Solution",
  )[
    To compute the limit, we use the standard limit $lim_(x-> 0) frac(sin(x), x) = 1$,
    and the fact that $tan(x) = frac(sin(x), cos(x))$:
    $
    lim_(x-> 0) frac(tan(5x), sin(2x))
    & = lim_(x-> 0) frac(sin(5x), cos(5x) sin(2x)) \
    & = lim_(x-> 0) (frac(sin(5x),x))(frac(x, sin(2x)))(frac(1, cos(5x))) \
    & = 5 * frac(1, 2) * 1 = frac(5, 2).
    $
    Therefore, the limit is $frac(5, 2)$.
  ]

== More limits

- $limits(lim)_(x -> -5) frac(frac(1,5) + frac(1,x), x + 5)$
  #block(
    title: "Solution",
  )[
    Since $frac(1,5) + frac(1,-5) = 0$ and $-5 + 5 = 0$, we have an indeterminate form
    $frac(0,0)$.
    To compute the limit, we simplify the expression:
    $
    lim_(x -> -5) frac(frac(1,5) + frac(1,x), x + 5)
    & = lim_(x -> -5) frac(frac(x + 5, 5x), x + 5) \
    & = lim_(x -> -5) frac(1, 5x) quad " (after canceling the common factor "x + 5" )" \
    & = frac(1, 5 * -5)  = frac(-1, 25).
    $
    Therefore, the limit is $frac(-1, 25)$.
  ]

#pagebreak()

- $limits(lim)_(x->4) (frac(1,sqrt(x)-2) - frac(3,x-4))$
  #block(
    title: "Solution",
  )[
    Since $frac(1,sqrt(4)-2) - frac(3,4-4) = frac(1,0) - frac(3,0)$,
    we have an indeterminate form $oo - oo$.
    To compute the limit, we rationalize the _first term to obtain a common
    denominator_:
    $
    lim_(x->4) (frac(1,sqrt(x)-2) - frac(3,x-4))
    & = lim_(x->4) (frac(sqrt(x)+2, x-4) - frac(3,x-4)) \
    & = lim_(x->4) frac(sqrt(x)-1, x-4) \
    $
    Via evaluation, we note that this would yield $frac(1,0)$, thus the limit
    would not be a real number.
    Observing that $x - 4 = (sqrt(x) - 2)(sqrt(x) + 2)$, we can simplify further:
    $
    lim_(x->4) (frac(1,sqrt(x)-2) - frac(3,x-4))
    & = lim_(x->4) frac(sqrt(x)-1, x-4) \
    & = lim_(x->4) frac(sqrt(x)-2 + 1, x-4) \
    & = lim_(x->4) frac(1, sqrt(x) + 2) + lim_(x->4) frac(1, x-4) \
    & = frac(1, 4) + lim_(x->4) frac(1, x-4)
    $
    The existence of the limit $lim_(x->4) (frac(1,sqrt(x)-2) - frac(3,x-4))$
    depends on the existence of the limit $lim_(x->4) frac(1, x-4)$.
    Since $lim_(x->4^-) frac(1, x-4) = -oo$ and
    $lim_(x->4^+) frac(1, x-4) = +oo$, the limit does not exist.
]

- $limits(lim)_(x->3) frac(sqrt(3x) - sqrt(2x - 2), x^2 - 4)$
  #block(
    title: "Solution",
  )[
    Since $sqrt(3*3) - sqrt(2*3 - 2) = 1$ and $3^2 - 4 = 5$, we simply evaluate the limit directly:
    $
    lim_(x->3) frac(sqrt(3x) - sqrt(2x - 2), x^2 - 4) = frac(1, 5).
    $
    Therefore, the limit is $frac(1, 5)$.
    *Always evaluate the limit directly first!*
  ]

== Squeeze Theorem and Trigonometric Limits

- $limits(lim)_(x->0) x^2 sin(frac(1,x))$
  #block(
    title: "Solution",
  )[
    To compute the limit, we use the _Squeeze Theorem_.
    Since $-1 <= sin(frac(1,x)) <= 1$, we have
    $
    -x^2 <= x^2 sin(frac(1,x)) <= x^2.
    $
    Taking the limits of the upper and lower bounds, we have
    $
    lim_(x->0) -x^2 = 0 quad " and " quad lim_(x->0) x^2 = 0.
    $
    By the Squeeze Theorem, we conclude that
    $
    lim_(x->0) x^2 sin(frac(1,x)) = 0.
    $
  ]

- $limits(lim)_(x->0) x^4 cos(frac(2,x))$
  #block(
    title: "Solution",
  )[
    To compute the limit, we use the _Squeeze Theorem_.
    Since $-1 <= cos(frac(2,x)) <= 1$, we have
    $
    -x^4 <= x^4 cos(frac(2,x)) <= x^4.
    $
    Taking the limits of the upper and lower bounds, we have
    $
    lim_(x->0) -x^4 = 0 quad " and " quad lim_(x->0) x^4 = 0.
    $
    By the Squeeze Theorem, we conclude that
    $
    lim_(x->0) x^4 cos(frac(2,x)) = 0.
    $
  ]

- $limits(lim)_(x->5) (x-5) e^(cos(frac(1,x-5)))$
  #block(
    title: "Solution",
  )[
    To compute the limit, we use the _Squeeze Theorem_.
    Since $-1 <= cos(frac(1,x-5)) <= 1$, we have
    $
    e^(-1) <= e^(cos(frac(1,x-5))) <= e.
    $
    *When multiplying by $x - 5$, we need to consider the sign of $x - 5$.*
    For $x < 5$, we have
    $
    e (x - 5) >= (x - 5) e^(cos(frac(1,x-5))) >= e^(-1) (x - 5).
    $
    Using the fact that $lim_(x->5^-) (x - 5) = 0$, we have
    $lim_(x->5^-) -e (x - 5) = 0$ and $lim_(x->5^-) -e^(-1) (x - 5) = 0$:
    we have "squeezed" the left lateral limit to
    $lim_(x->5^-) (x-5) e^(cos(frac(1,x-5))) = 0$.

    For $x > 5$, we have
    $
    e^(-1) (x - 5) <= (x - 5) e^(cos(frac(1,x-5))) <= e (x - 5).
    $
    Using the fact that $lim_(x->5^+) (x - 5) = 0$, again we have
    $lim_(x->5^+) e (x - 5) = 0$ and $lim_(x->5^+) e^(-1) (x - 5) = 0$:
    we have "squeezed" the right lateral limit to
    $lim_(x->5^+) (x-5) e^(cos(frac(1,x-5))) = 0$, and thus the full limit to
    $lim_(x->5) (x-5) e^(cos(frac(1,x-5))) = 0$.
  ]

- $limits(lim)_(x->frac(pi,4)) frac(sin(x) - cos(x), 1 - tan(x))$
  #block(
    title: "Solution",
  )[
    Since $sin(frac(pi,4)) - cos(frac(pi,4)) = 0$ and
    $1 - tan(frac(pi,4)) = 0$, we have an indeterminate form $frac(0,0)$.
    To compute the limit, we simplify the expression:
    $
    lim_(x->frac(pi,4)) frac(sin(x) - cos(x), 1 - tan(x))
    & = lim_(x->frac(pi,4)) frac(sin(x) - cos(x), frac(cos(x) - sin(x), cos(x))) \
    & = lim_(x->frac(pi,4)) frac((sin(x) - cos(x)) cos(x), cos(x) - sin(x)) \
    & = lim_(x->frac(pi,4)) frac(-(cos(x) - sin(x)) cos(x), cos(x) - sin(x)) \
    & = -lim_(x->frac(pi,4)) cos(x) quad " (after canceling the common factor "cos(x) - sin(x)" )" \
    & = -cos(frac(pi,4)) = -frac(sqrt(2),2).
    $
    Therefore, the limit is $-frac(sqrt(2),2)$.
  ]

- $limits(lim)_(x->0) frac(1 - cos(x), x^2)$.
  #block(
    title: "Solution",
  )[
    Since $1 - cos(0) = 0$ and $0^2 = 0$, we have an indeterminate form $frac(0,0)$.
    To compute the limit, we can use the trigonometric identity
    $1 - cos(x) = 2 sin^2(frac(x,2))$ or amplify the expression using
    $1 + cos(x)$ as a conjugate.
    Using the identity, we have
    $
    lim_(x->0) frac(1 - cos(x), x^2)
    & = lim_(x->0) frac(2 sin^2(frac(x,2)), x^2) \
    & = 2 (lim_(x->0) frac(sin(frac(x,2)), x))^2 \
    & = 2 (frac(1,2))^2 = frac(1,2).
    $
    Using the conjugate, we have
    $
    lim_(x->0) frac(1 - cos(x), x^2)
    & = lim_(x->0) frac((1 - cos(x))(1 + cos(x)), x^2 (1 + cos(x))) \
    & = lim_(x->0) frac(1 - cos^2(x), x^2 (1 + cos(x))) \
    & = lim_(x->0) frac(sin^2(x), x^2 (1 + cos(x))) \
    & = frac((lim_(x->0) frac(sin(x), x))^2, 1 + lim_(x->0) cos(x)) \
    & = frac(1^2, 1 + 1) = frac(1,2).
    $
    Both methods yield the same result: the limit is $frac(1,2)$.
  ]

- $limits(lim)_(x->1) (1-x) tan(frac(pi x,2))$
  #block(
    title: "Solution",
  )[
    Since $1-1 = 0$ and $tan(frac(pi * 1,2)) = tan(frac(pi,2)) = oo$, we have an
    indeterminate form $0 * oo$.
    To compute the limit, we rewrite the tangent function in terms of sine and
    cosine, and then we use _cofunction identities_:
    $
    lim_(x->1) (1-x) tan(frac(pi x,2))
    & = lim_(x->1) (1-x) frac(sin(frac(pi x,2)), cos(frac(pi x,2))) \
    & = lim_(x->1) frac((1-x) sin(frac(pi x,2)), sin(frac(pi,2) - frac(pi x,2))) \
    & = lim_(x->1) frac(1-x, sin(frac(pi,2)(1-x))) * frac(sin(frac(pi x,2)), 1) \
    & = frac(2,pi) * sin(frac(pi * 1,2)) = frac(2,pi).
    $
    Therefore, the limit is $frac(2,pi)$.
  ]

== Continuity of piecewise functions

=== On the computation of limits and continuity

- Compute $limits(lim)_(x->3^-) f(x)$, $limits(lim)_(x->3^+) f(x)$, and $f(3)$ for
  $
  f(x) = cases(
    (x^2 - 9)/(x - 3) "if" x < 3,
    6 "if" x = 3,
    -2x + 12 "if" x > 3
  )
  $
  #block(
    title: "Solution",
  )[
    To compute the left-hand limit, we use the expression for $f(x)$ when $x < 3$:
    $
    limits(lim)_(x->3^-) f(x)
    & = limits(lim)_(x->3^-) frac(x^2 - 9, x - 3) \
    & = limits(lim)_(x->3^-) frac((x - 3)(x + 3), x - 3) \
    & = limits(lim)_(x->3^-) (x + 3) quad " (after canceling the common factor "x - 3" )" \
    & = 3 + 3 = 6.
    $
    To compute the right-hand limit, we use the expression for $f(x)$ when $x > 3$:
    $
    limits(lim)_(x->3^+) f(x)
    & = limits(lim)_(x->3^+) (-2x + 12) \
    & = -2 * 3 + 12 = 6.
    $
    Finally, we evaluate $f(3)$ using the definition of $f(x)$ at $x = 3$:
    $
    f(3) = 6.
    $
    Since $limits(lim)_(x->3^-) f(x) = limits(lim)_(x->3^+) f(x) = f(3) = 6$,
    we conclude that $f(x)$ is continuous at $x = 3$.
  ]

#pagebreak()

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
  #block(
    title: "Solution",
  )[
    To compute the left-hand limit at $x = 2$, we use the expression for $f(x)$ when $1 < x < 2$:
    $
    limits(lim)_(x->2^-) f(x)
    & = limits(lim)_(x->2^-) (4 - x) \
    & = 4 - 2 = 2.
    $
    To compute the right-hand limit at $x = 2$, we use the expression for $f(x)$ when $x >= 2$:
    $
    limits(lim)_(x->2^+) f(x)
    & = limits(lim)_(x->2^+) ln(x) \
    & = ln(2).
    $
    Finally, we evaluate $f(2)$ using the definition of $f(x)$ at $x = 2$:
    $
    f(2) = ln(2).
    $
    Since $limits(lim)_(x->2^-) f(x) = 2$ and
    $limits(lim)_(x->2^+) f(x) = f(2) = ln(2)$,
    we conclude that $f(x)$ is not continuous at $x = 2$.

    To compute the left-hand limit at $x = 1$, we use the expression for $f(x)$ when $x < 1$:
    $
    limits(lim)_(x->1^-) f(x)
    & = limits(lim)_(x->1^-) (x^2 - 4) \
    & = 1^2 - 4 = -3.
    $
    To compute the right-hand limit at $x = 1$, we use the expression for $f(x)$ when $1 < x < 2$:
    $
    limits(lim)_(x->1^+) f(x)
    & = limits(lim)_(x->1^+) (4 - x) \
    & = 4 - 1 = 3.
    $
    Finally, we evaluate $f(1)$ using the definition of $f(x)$ at $x = 1$:
    $
    f(1) = 3.
    $
    Since $limits(lim)_(x->1^-) f(x) = -3$ and
    $limits(lim)_(x->1^+) f(x) = f(1) = 3$,
    we conclude that $f(x)$ is not continuous at $x = 1$.
  ]
#text(size: 8pt)[
  If you read this, you can claim a 1% bonus on the midterm exam.
  Send me an email with the subject "Bonus 1%"
  and the text "I read the note at the end of the limits section".
]


#pagebreak()

- Compute $limits(lim)_(x->0^-) f(x)$, $limits(lim)_(x->0^+) f(x)$, and $f(0)$ for
  $
  f(x) = cases(
    sin(x)/x "if" x < 0,
    1 "if" x = 0,
    e^(-x) "if" x > 0
  )
  $
  #block(
    title: "Solution",
  )[
    To compute the left-hand limit, we use the expression for $f(x)$ when $x < 0$:
    $
    limits(lim)_(x->0^-) f(x)
    & = limits(lim)_(x->0^-) frac(sin(x), x) \
    & = 1.
    $
    To compute the right-hand limit, we use the expression for $f(x)$ when $x > 0$:
    $
    limits(lim)_(x->0^+) f(x)
    & = limits(lim)_(x->0^+) e^(-x) \
    & = e^0 = 1.
    $
    Finally, we evaluate $f(0)$ using the definition of $f(x)$ at $x = 0$:
    $
    f(0) = 1.
    $
    Since $limits(lim)_(x->0^-) f(x) = limits(lim)_(x->0^+) f(x) = f(0) = 1$,
    we conclude that $f(x)$ is continuous at $x = 0$.
  ]

== Intermediate Value Theorem

- Show that $f(x) = x^3 + 4x - 1$ has a root in the interval $[0,1]$.
  #block(
    title: "Solution",
  )[
    To show that $f(x)$ has a root in the interval $[0,1]$, we use the
    _Intermediate Value Theorem_.
    We evaluate $f(0)$ and $f(1)$:
    $
    f(0) = 0^3 + 4*0 - 1 = -1,
    $
    $
    f(1) = 1^3 + 4*1 - 1 = 4.
    $
    Since $f(0) < 0$ and $f(1) > 0$, by the Intermediate Value Theorem,
    there exists at least one $c$ in the interval $(0,1)$ such that
    $f(c) = 0$.
    Therefore, $f(x)$ has a root in the interval $[0,1]$.
  ]

- Show that $f(x) = e^x - 2 - x$ has a root in the interval $[0,2]$.
  #block(
    title: "Solution",
  )[
    To show that $f(x)$ has a root in the interval $[0,2]$, we use the
    _Intermediate Value Theorem_.
    We evaluate $f(0)$ and $f(2)$:
    $
    f(0) = e^0 - 2 - 0 = -1, quad " and " quad
    f(2) = e^2 - 2 - 2 = e^2 - 4.
    $
    Since $e^2 approx 7.389 > 4$, we have $f(2) > 0$.
    Since $f(0) < 0$ and $f(2) > 0$, by the Intermediate Value Theorem,
    there exists at least one $c$ in the interval $(0,2)$ such that
    $f(c) = 0$.
    Therefore, $f(x)$ has a root in the interval $[0,2]$.
  ]

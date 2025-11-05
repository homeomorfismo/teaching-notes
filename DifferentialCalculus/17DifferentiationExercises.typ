#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00Template.typ": *
#show: main_format

#date_header
#make_title

You may ommit the blocks on a first reading, but they contain useful
information.
The exercises are at the end of the document.

= Quotient rule

Let $f(x)$ and $g(x)$ be differentiable functions, with $g(x) != 0$, and
define the function $h(x) = frac(f(x), g(x))$.
We may write $h(x) = f(x) dot (g(x))^(-1)$, and use the product rule and the
chain rule to compute the derivative of $h(x)$:
$
frac(dd(h), dd(x))(x) & = frac(dd(""), dd(x)) [f dot (g^(-1))](x) \
& = frac(dd(f), dd(x))(x) dot (g(x))^(-1) + f(x) dot
                         frac(dd(""), dd(x)) [g^(-1)](x) \
& = frac(dd(f), dd(x))(x) dot (g(x))^(-1) + f(x) dot
                         (-1) dot (g(x))^(-2) dot frac(dd(g), dd(x))(x) \
& = frac(dd(f), dd(x))(x) dot frac(1, g(x)) - f(x) dot
                          frac(1, (g(x))^2) dot frac(dd(g), dd(x))(x) \
& = frac( frac(dd(f), dd(x))(x) dot g(x) - f(x) dot
                          frac(dd(g), dd(x))(x), (g(x))^2 ).
$

In "prime" notation, this is much easier to write and read:
$
(frac(f, g))' = frac(f' dot g - f dot g', g^2).
$

= On the derivative of the inverse of a function

Let $f(x)$ be a differentiable function with a differentiable inverse $f^(-1)(x)$.
Note that $(f compose f^(-1))(x) = f(f^(-1)(x)) = x$ for all $x$ in the domain
of $f^(-1)(x)$.
In other words, $f compose f^(-1) = id$, where $id(x) = x$ is the identity function.
Chain rule implies that
$
1 = & frac(dd(""), dd(x)) [id](x) \
& = frac(dd(""), dd(x)) [f compose f^(-1)](x) \
& = frac(dd(f), dd(x))(f^(-1)(x)) dot frac(dd(f^(-1)), dd(x))(x),
$
in other words, after dividing both sides by $frac(dd(f), dd(x))(f^(-1)(x))$,
we get the formula for the derivative of the inverse function:
$
frac(dd(f^(-1)), dd(x))(x) = frac(1, frac(dd(f), dd(x))(f^(-1)(x))),
$
or, in "prime" notation,
$
(f^(-1))'(x) = frac(1, f'(f^(-1)(x))).
$

#block(
  title: "On the notation of a derivative",
  color: psu-red,
)[
  Note that the "operator" $frac(dd(""), dd(x))$ is "applied" to a function to
  get its derivative.
  Moreover, the derivative is a _function_ itself: for each input $x$, it
  produces a number $frac(dd(f), dd(x))(x)$.

  - Given a function $f$ (of variable $x$), its derivative is denoted by
    $frac(dd(f), dd(x))$ or $f'$.
  - The value of the derivative at a specific point $x$ is denoted by
    $frac(dd(f), dd(x))(x)$ or $f'(x)$.
  - At times, it is convenient to specify the "action of" the derivative operator
    on a function at a specific point, which we denote with *square brackets*:
    $frac(dd(""), dd(x)) [f](x)$.
]

#block(
  title: "On the notation of an inverse function",
  color: psu-red,
)[
  Here, as usual, the inverse function of $f$ is denoted by $f^(-1)$.
  This means that $f^(-1)(y)$ is the value of $x$ such that $f(x) = y$.

  - Note that $f^(-1)(f(x)) = x$ for all $x$ in the domain of $f$.
  - Also, $f(f^(-1)(y)) = y$ for all $y$ in the domain of $f^(-1)$.
  - This does *not* mean that $f^(-1)(x) = frac(1, f(x))$.
    Sadly, this is a common misconception, and the convention does not help
    with the distinction.

  For example, if $f(x) = e^x$, then $f^(-1)(x) = ln(x)$, not $frac(1, e^x)$.
  If $g(x) = 1/x$, then $g^(-1)(x) = 1/x$, not $frac(1, 1/x) = x$.
]

#block(
  title: "On the evaluation of a derivative at a point",
  color: psu-red,
)[
  You may see in some books the notation $frac(dd(f), dd(x))(a)$ written as
  $frac(dd(f), dd(x)) bar.v_(x = a)$.
  This notation emphasizes that we are evaluating the derivative at the point
  $x = a$, and tries to _"declutter"_ the notation (unsuccessfully, in my
  opinion).
]

== Examples

=== Derivative of the inverse of $f(x) = e^x$

We know that the inverse function of $f(x) = e^x$ is $f^(-1)(x) = ln(x)$.
Using the formula above, we can prove that
$
frac(dd(ln), dd(x))(x) & = frac(1, frac(dd(f), dd(x))(f^(-1)(x))) \
& = frac(1, e^(ln(x))) \
& = frac(1, x),
$
as $f'(x) = frac(dd(f), dd(x))(x) = e^x$.

=== Derivative of the inverse of $g(x) = sin(x)$

We know that the inverse function of $g(x) = sin(x)$ is $g^(-1)(x) = arcsin(x)$.
Again, using the formula above, we can prove that
$
frac(dd(arcsin), dd(x))(x) & = frac(1, frac(dd(g), dd(x))(g^(-1)(x))) \
& = frac(1, cos(arcsin(x))) \
& = frac(1, sqrt(1 - sin^2(arcsin(x)))) \
& = frac(1, sqrt(1 - x^2)),
$
as $g'(x) = frac(dd(g), dd(x))(x) = cos(x)$, and we used the Pythagorean identity
$sin^2(y) + cos^2(y) = 1$ to simplify the expression.

= Chain rule is everywhere

The chain rule is one of the most important rules in differentiation, as the
_"implicit"_ composition of functions is everywhere.
We will show a few examples below.

== Factored polynomials are better than expanded (sometimes)

Consider the function $f(x) = (3x + 1)^5$.
With great effort, one can expand this polynomial to get
$f(x) = 243 x^5 + 405 x^4 + 270 x^3 + 90 x^2 + 15 x + 1$, which I *did not
computed myself, but rather used
#link("https://www.wolframalpha.com/input?i=%283x+%2B1%29%5E5")[Wolfram Alpha]
to do it for me*.

Differentiating the expanded form is possible, but tedious, as many products
need to be handled.
In this case, the derivative---using the linearity of the derivative, and the
power rule for each term---is
$
frac(dd(f), dd(x))(x) & = 1215 x^4 + 1620 x^3 + 810 x^2 + 180 x + 15.
$

On the other hand, using the chain rule on the factored form is much easier.
Define the inner function $"inner"(x) = 3x + 1$ and the outer function
$"outer"(u) = u^5$.
Note that $f(x) = "outer" compose "inner"(x) = "outer"("inner"(x))$.

We can compute the derivatives of the inner and outer functions:
$
frac(dd(""), dd(x)) ["inner"](x) & = 3, \
frac(dd(""), dd(u)) ["outer"](u) & = 5 u^4.
$
(Here, we make use of a different variable $u$ for the outer function to
clarify the distinction between the two functions.)
Using the chain rule, we get
$
frac(dd(f), dd(x))(x) & = frac(dd(""), dd(u)) ["outer"]( "inner"(x) ) dot
                         frac(dd(""), dd(x)) ["inner"](x) \
& = 5 (3x + 1)^4 dot 3 \
& = 15 (3x + 1)^4,
$
which is much simpler than the derivative of the expanded form, and _elegant_.

#block(
  title: "When to expand a polynomial?",
  color: psu-red,
)[
  The rule of thumb is to _not_ expand a polynomial: factored forms usually 
  provide more information about the function:
  - The roots of the polynomial are easier to identify.
  - We can check the signs of the polynomial more easily.
  - The derivative is often easier to compute using the chain rule and the
    product rule.

  However, there are cases when the expanded form is more useful, for example,
  - If there is a composition of many functions, expanding some expressions may
    make the differentiation easier.
  - If we need to evaluate the derivative at a specific point, sometimes
    expanding the polynomial may help streamline the computation.
]

#block(
  title: "How to factor a polynomial?",
  color: psu-blue,
)[
  At some point, it will be relevant to know how to compute the roots of a
  polynomial and *factor it*.
  Here are some quick facts and tips:
  - All polynomials may be factored into linear and irreducible quadratic factors
    over the real numbers.
    - $x - a$ is what we call a *linear factor*.
    - $x^2 + b x + c$ is what we call an *irreducible quadratic factor* if
      _its discriminant is negative_, i.e., $Delta = b^2 - 4c < 0$.
  - If $Delta >= 0$, the quadratic may be factored further into linear factors:
    $x^2 + b x + c = (x - r_1)(x - r_2)$, where
    $r_1 = frac(-b + sqrt(Delta), 2)$ and $r_2 = frac(-b - sqrt(Delta), 2)$.
  - There are different ways to chase roots of a polynomial $p(x)$:
    - _Bisection method_ allows to find a root in an interval $[a, b]$ where
      $p(a) dot p(b) < 0$ (i.e., the polynomial changes sign).
    - If the coefficients of the polynomial are integers, one may use the
      _Rational Root Theorem_ to find possible rational roots to test.
      If $p(x) = a_n x^n + ... + a_1 x + a_0$, then any rational root
      $frac(p, q) in QQ$ must have $p$ dividing $a_0$ and $q$ dividing $a_n$.
    - _Synthetic division_ is a streamlined way to divide a polynomial by a
      linear factor of the form $x - r$.
      You can also use _long division_ to divide a polynomial by any other
      polynomial.
]

#block(
  title: "Some examples of the factorization tricks",
  color: psu-electric-green,
)[
  1. *Irreducible polynomial*: $x^2 + 4$ cannot be factored further over the
     real numbers, as its discriminant is negative: $Delta = 0^2 - 4 dot 4 = -16 < 0$.
  2. *Using the quadratic formula*: $x^2 + x - 1$ ($a = 1, b = 1, c = -1$)
     has the discriminant $Delta = 1^2 - 4 dot (-1) = 5 >= 0$, so it *may be
     factored*.
     Its roots are $x_plus.minus = frac(-a plus.minus sqrt(Delta), 2a) =
     frac(-1 plus.minus sqrt(5), 2)$.
     Therefore,
     $
     x^2 + x - 1 = (x - x_plus)(x - x_minus) = (x - frac(-1 + sqrt(5), 2))(x - frac(-1 - sqrt(5), 2)).
     $
  3. *Bisection method*:
     Consider the polynomial $p(x) = x^2 - 11x + 10$.
     We can check that $p(0) = 10 > 0$ and $p(2) = 2^2 - 11 dot 2 + 10 = -12 < 0$.
     Therefore, there is a root in the interval $[0, 2]$, and inspection shows
     that $x = 1$ is a root.
  4. *Long division* (continued):
      Continuing from the previous example, we can divide $p(x) = x^2 - 11x + 10$
      by the linear factor $x - 1$ using long division:
      $
      (x^2 - 11x + 10) : (x - 1) = x - 10,
      $
      as $x(x - 1) = x^2 - x$, and subtracting gives $-10x + 10$;
      then, $-10(x - 1) = -10x + 10$, and subtracting gives $0$.
      Therefore, we have $p(x) = (x - 1)(x - 10)$.
  5. *Rational root theorem*:
     Consider the polynomial $q(x) = 2x^3 - 3x^2 - 8x + 12$.
     The divisors of the constant term $a_0 = 12$ are
     $
     "divisors"(12) = {plus.minus 1, plus.minus 2, plus.minus 3,
      plus.minus 4, plus.minus 6, plus.minus 12},
     $
     and the divisors of the leading coefficient $a_3 = 2$ are
     $
      "divisors"(2) = {plus.minus 1, plus.minus 2}.
     $
     The _candidates_ for rational roots are all fractions $frac(p, q)$ where
     $p in "divisors"(12)$ and $q in "divisors"(2)$: this is,
     $
     "candidates"(q) = {plus.minus 1, plus.minus 2, plus.minus 3,
      plus.minus 4, plus.minus 6, plus.minus 12, plus.minus frac(1, 2),
      plus.minus frac(3, 2), plus.minus frac(6, 2)}.
     $
     Testing these candidates, we find that $x = 2$ is a root, as
     $q(2) = 2 dot 2^3 - 3 dot 2^2 - 8 dot 2 + 12 = 0$.
     Therefore, we can factor $q(x)$ as
     $
     q(x) = (x - 2)(2x^2 + x - 6),
     $
     and we can continue factoring the quadratic $2x^2 + x - 6$ using the
     quadratic formula.
  5. *Mix and match!*---Note that you can combine these techniques as needed!
]

= Exercises

You may use a calculator for numerical approximations.

== Derivatives as a function

1. Find the point(s) of the graph of $f$ where the tangent line...

   a. ...is horizontal, given that $f(x) = x^3 - 3x^2 + 4$.

   b. ...has slope $2$, given that $f(x) = 4 x^3 - 6 x + 1$.

2. Is there a point on the graph of $f(x) = e^x$ where the tangent line has
   slope $5$? What about slope $-1$?

3. Determine $a, b in RR$ such that the polynomial $p(x) = x^2 + a x + b$
   satisfies $p(1) = 0$ and has a horizontal tangent line at $x = 1$.

== Best linear approximation

Recall that the best linear approximation of a function $f(x)$ at a point $x = a$ is
$
"Lin"(f, a)(x) = f(a) + f'(a) dot (x - a).
$

1. Find the linear approximation of $f(x) = ln(x)$ at $x = 1$.
   Use it to approximate $ln(1.1)$.

2. Find the linear approximation of $g(x) = sqrt(x)$ at $x = 4$.
   Use it to approximate $sqrt(4.2)$.

3. Find the linear approximation of $h(x) = e^x$ at $x = 0$.
    Use it to approximate $e^(0.05)$.

*Optionally,* compute the actual values and compare them with your
approximations.
How accurate are your approximations?
What is the distance from your reference point and the point you are
approximating at?

== Differentiation rules

1. Use the quotient rule to differentiate the following functions:

   a. $f(x) = frac(2x^2 + 3, x - 1)$.

   b. $g(x) = frac(sin(x), x^2 + 1)$.

   c. $h(x) = frac(e^x, x^3)$.

   d. $k(x) = tan(x)$.


2. Differentiate the following functions using any rules you know:

   a. $f(x) = (x^2 + 1)^5$.

   b. $g(x) = sqrt(3x + 4)$.

   c. $h(x) = ln(sin(x))$.

   d. $k(x) = e^(tan(x))$.

   e. $m(x) = x^2 dot e^(3x)$.

3. (Optional) Check that if a polynomial $p(x)$ has a _repeated root_ at
   $x = xi$, then $p'(xi) = 0$.
   _Hint_: A polynomial $p(x)$ has a repeated root at $x = xi$, then we can
   divide $p(x)$ by $(x - xi)^2$, i.e., there is a polynomial $q(x)$ such that
   $p(x) = (x - xi)^2 dot q(x)$.
   From here, use the product rule.

4. (Optional) Differentiate the following functions using any rules you know:

   a. $f(x) = arcsin(x^2)$.

   b. $g(x) = arccos(e^x)$.

   c. $h(x) = arctan(ln(x))$.

5. (Optional: rates of changes) A rate of change is, essentially, the derivative
   of a function.
   We usually use variables that represent physical quantities, for example,
   $
   "volume over time" & = frac(dd(V), dd(t)) [frac("length"^3, "time")], \
   "radius over time" & = frac(dd(r), dd(t)) [frac("length", "time")], \
   "area over length" & = frac(dd(A), dd(l)) [frac("length"^2, "length")].
   $
   We put emphasis on the _units_ of the quantities, as they help us understand
   what is going on in a problem.
    
    a. The radius of a circle is increasing at a rate of $2 "cm"/"s"$.
       How fast is the area of the circle increasing when the radius is
       $5 "cm"$?
       Hint: The area of a circle is $A = pi r^2$. You may prefer to write
       $A = A(t)$ and $r = r(t)$ to emphasize the dependence on time.

    b. The temperature of a cup of coffee is decreasing at a rate of
       $3 "°C"/"min"$.
       How fast is the temperature decreasing in $"°F"/"min"$?
       Hint: The relation between Celsius and Fahrenheit is
       $F = frac(9, 5) C + 32$.

== Derivative of the inverse function

1. Use the formula for the derivative of the inverse function to compute
   $frac(dd(""), dd(x)) [arccos](x)$.
2. Use the formula for the derivative of the inverse function to compute
    $frac(dd(""), dd(x)) [arctan](x)$.

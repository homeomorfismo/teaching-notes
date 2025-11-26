#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00Template.typ": *
#show: main_format

#date_header
#make_title

= Newton's Method

You may use a calculator or computer to assist you with the following
exercises.

- Use Newton's method to approximate the roots of $f(x) = frac(1,3) x^3 - 4 x +
  1$. Consider the starting points $x^((1))_0 = 1.854$, $x^((2))_0 = 1.7$, and
  $x^((3))_0 = 1.55$. What do you notice about the approximations? What can be
  said about the initial points in regards to their proximity to the actual
  roots?

- If you deposit $sans("D")$ USD in a retirement fund every year for $n$ years,
  with the intention of withdrawing $sans("W")$ USD each year for $m$ years during
  retirement, you must earn interest at a rate $sans("r")$ (expressed as a
  decimal) that satisfies the equation
  $
  sans("D") dot (b^n - 1) = sans("W") dot (1 - b^(-m)),
  $
  where $b = 1 + sans("r")$. Assume you plan to deposit $2000$ USD every year
  for $30$ years, and withdraw $10,000$ USD every year for $25$ years during
  retirement. Use Newton's method to determine the interest rate you must earn
  to achieve your goal.

- Provide an interative formula for approximating the $n$-th root of a number
  $a$ using Newton's method.
  Use your formula to approximate $root(3, 10)$ to two decimal places.

= Extrema and Optimization

- Find the extreme values of the following functions on the given intervals:
  1. $f(x) = x(10 - x)$ on $[-1, 3]$
  2. $f(x) = 6 x^4 - 4 x^6$ on $[-2, 2]$
  3. $g(theta) = sin^2(theta) - cos(theta)$ on $[0, 2 pi]$
  4. $h(x) = e^x - 20 x - 1$ on $[0, 5]$

- Find the dimensions of a cylindrical can with a bottop and no top, of volume
  $4 "cm"^3$, that uses the least amount of metal.

- A rectangular open-topped box of height $h$, and a square base of side length
  $b$ has volume $V = 5 m^3$. Two sides of the box are made of cedar at a cost
  of $sans("20")$ USD per square meter, and the other two sides and the bottom
  are made of pine at a cost of $sans("10")$ USD per square meter.
  Find the dimensions $h$ and $b$ that minimize the cost of materials for the
  box.

- Let $sans("S")(t)$ be the size of a tumor (in units of $10^6$ cells) at time
  $t$ (in days).
  The _Gompertz model_ for tumor growth is given by the differential equation
  $
  dv(sans("S"), t) = sans("S") dot (a - b log(sans("S"))),
  $
  where $a$ and $b$ are positive constants.
  1. What is the size of the tumor if its size it maximized?
  2. Maximize the rate of growth of the tumor, in terms of the size of the
     tumor.

= Implicit differentiation (and related rates)

- Find the equation of the tangent line to the hyperbola defined by the
  equation $x^2 - y^2 = 16$ at the point $(5, 3)$.

- Use implicit differentiation to find the first and second derivatives of:
  1. $x y - cos(x y) = 1$
  2. $x^3 y + x y^3 = 8$
  3. $e^(x^2 + y^2) = x - y$

- A 10-foot ladder is leaning against a vertical wall.
  If the bottom of the ladder is pulled away from the wall at a rate of
  $2 [frac("ft","s")]$, how fast is the top of the ladder sliding down the wall when
  the bottom of the ladder is $5$ feet from the wall?

- You and your best friend decided to bike to a restaurant.
  You bike due north at a rate of $8 [frac("km","h")]$, while your friend bikes
  due east at a rate of $12 [frac("km","h")]$, due to a disagreement about the best
  route to take. You both from the same starting point.
  How fast is the distance between you and your friend increasing when you are
  $6 ["km"]$ north of the starting point?

= Qualitative Graph Analysis

Consider the function $f(x) = -5 + 6 x + x^2/2 - (4 x^3)/3 + x^4/4$.
Determine the intervals where the function is increasing/decreasing,
concave up/concave down, and identify all local/global extrema
and inflection points.

Recall that a function is increasing where its first derivative is positive,
and decreasing where its first derivative is negative.
Similarly, a function is concave up (or convex) where its second derivative is
positive, and concave down where its second derivative is negative.

For your convenience, consider making a table to organize your work:
first find the critical points and inflection points (by solving for where the
first and second derivatives are zero, respectively),
then create intervals based on those points, and finally determine the sign
of the first and second derivatives on those intervals.

Sketch a graph of the function based on your analysis.

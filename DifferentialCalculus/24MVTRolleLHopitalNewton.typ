#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00Template.typ": *
#show: main_format

#date_header
#make_title

= Rolle's Theorem and Mean Value Theorem

In physics, there is an important distinction between _average velocity_ and
_instantaneous velocity_.
While the former is defined over a _time interval_ of some length $Delta t
= t_1 - t_0$, the latter is defined at a _specific instant_ in time $t$.
Recall that the average velocity $overline(v)$ over the time interval
$[t_0, t_1]$ is given by the formula:
$
overline(v) = frac(x(t_1) - x(t_0), t_1 - t_0)
$
where $x(t)$ is the position function of the object at time $t$.
On the other hand, the instantaneous velocity $v(t)$ at time $t$ is given
by the derivative of the position function:
$v(t) = dv(x, t)$.

If the object travels at different speeds during the time interval $[t_0, t_1]$,
there must be at least one instant $t$ in that interval where the instantaneous
velocity equals the average velocity.
This idea is formalized in calculus through the _Mean Value Theorem_ (MVT).

== Extreme Value Theorem (EVT)

Before discussing Rolle's Theorem and the Mean Value Theorem, it is important
to understand the _Extreme Value Theorem_ (EVT).
The EVT states that if a function $f$ is continuous on a closed interval
$[a, b]$, then it must attain both a maximum and a minimum value within that
interval.
This means there exist points $c$ and $d$ in $[a, b]$ such that:
- $f(c) >= f(x)$ for all $x$ in $[a, b]$ (maximum)
- $f(d) <= f(x)$ for all $x$ in $[a, b]$ (minimum)

This is a fact that can be proven using bisection methods and the completeness
of the real numbers (which we will not display here).

== Rolle's Theorem: preliminary to MVT

Rolle's Theorem is a special case of the Mean Value Theorem.
It states that if a function $f$ is continuous on the closed interval $[a, b]$,
differentiable on the open interval $(a, b)$, and satisfies $f(a) = f(b)$,
then there exists at least one point $c$ in $(a, b)$ such that $f'(c) = 0$.
In other words, there is at least one point where the tangent to the curve is
horizontal.

Briefly, if $k = f(a) = f(b)$, then the function starts and ends at the same
height, and thus, there are three possible scenarios:
- The function is constant on $[a, b]$, in which case $f'(x) = 0$ for all
  $x$ in $(a, b)$.
- The function has some $x in (a, b)$ where $f(x) > k$, meaning there is a maximum
  at some point $c$ in $(a, b)$, where $f'(c) = 0$.
- The function has some $x in (a, b)$ where $f(x) < k$, meaning there is a minimum
  at some point $c$ in $(a, b)$, where $f'(c) = 0$.

== Mean Value Theorem (MVT)

The Mean Value Theorem generalizes Rolle's Theorem, by _reduction to Rolle's
Theorem_.
It states that if a function $f$ is continuous on the closed interval $[a, b]$
and differentiable on the open interval $(a, b)$, then there exists at least one
point $c$ in $(a, b)$ such that:
$f'(c) = frac(f(b) - f(a), b - a)
$
In other words, the slope of the secant line connecting the endpoints $(a, f(a))$
and $(b, f(b))$ is equal to the slope of the tangent line at some point $c$ in
$(a, b)$.
This means that there is at least one point where the instantaneous rate of change
(matches) the average rate of change over the interval.

To prove the MVT using Rolle's Theorem, we can construct a new function $g(x)$.
Let:
$
g(x) = f(x) - underbrace(
  (
  underbrace(frac(f(b) - f(a), b - a), "slope of secant line")  (x - a) +
  underbrace(f(a), "y-intercept")
  ),
  "equation of secant line"
)
$
This function $g(x)$ represents the difference between the original function
$f(x)$ and the secant line connecting the endpoints.
Notice that $g(a) = f(a) - f(a) = 0$ and $g(b) = f(b) - f(b) = 0$.
Thus, $g(a) = g(b)$.
Since $f(x)$ is continuous on $[a, b]$ and differentiable on $(a, b)$,
the same properties hold for $g(x)$.
By Rolle's Theorem, there exists at least one point $c$ in $(a, b)$ such that
$g'(c) = 0$.
Calculating $g'(x)$, we have:
$g'(x) = f'(x) - frac(f(b) - f(a), b - a)$.
Setting $g'(c) = 0$ gives us:
$f'(c) = frac(f(b) - f(a), b - a)$,
which is exactly what the Mean Value Theorem states.


= L'Hopital's Rule

Hopefully, by now you have some intuition for derivatives, linear approximations,
limits, and continuity.
Recall that the derivative corresponds to the slope of the "best linear
approximation" of a function at a point:
$
f(x) approx "Lin"(f, a)(x) = f(a) + f'(a)(x - a).
$

We can use this idea to evaluate certain limits, especially those that
result in indeterminate forms like $0/0$ or $oo/oo$.
_L'Hopital's Rule_ provides a method for evaluating such limits.
It states that if we have two functions $f(x)$ and $g(x)$ that are
differentiable on an open interval containing a point $a$ (except possibly at $a$ itself),
and if the limit of $f(x)$ and $g(x)$ as $x$ approaches $a$ results in an
indeterminate form of the type $0/0$ or $oo/oo$,
then
$
lim_(x -> a) frac(f(x), g(x)) = lim_(x -> a) frac(f'(x), g'(x)).
$
This means that we can evaluate the limit of the ratio of the derivatives
instead of the original functions.

#block(
  title: "Warning",
  color: psu-red,
)[
  1. L'Hopital's Rule only applies to limits that result in indeterminate forms
     like $0/0$ or $oo/oo$.
  2. We are NOT differentiating $f(x)/g(x)$; rather, we are taking the derivatives
     of the numerator and denominator separately.
  3. Do NOT confuse L'Hopital's Rule with the Quotient Rule for derivatives.
]

There are series of transformations we can apply to a limit to bring it into a form
where L'Hopital's Rule can be applied.

= Newton's Method

Yet again we decide to face the problem of finding roots of a function $f(x)$.
Now we are endowed with the knowledge of derivatives and linear approximations.
The _Newton's Method_ (or Newton-Raphson Method) uses these concepts to
iteratively approximate the roots of a function:
starting with an initial guess $x_0$ for a root of the function $f(x)$,
we can use the tangent line at the point $(x_0, f(x_0))$ to find a better approximation
$x_1$.
The equation of the tangent line at $x_0$ is given by:
$
y = "Lin"(f, x_0)(x) = f(x_0) + f'(x_0)(x - x_0).
$
To find the $x$-intercept of this tangent line (where $y = 0$), we set $y = 0$
and solve for $x$:
$0 = f(x_0) + f'(x_0)(x - x_0) =>
x = x_0 - frac(f(x_0), f'(x_0))$.
This gives us a new approximation $x_1$ for the root of $f(x)$.

We can repeat this process iteratively to refine our approximation:
$
x_(n+1) = x_n - frac(f(x_n), f'(x_n))
$
This method converges to a root of the function $f(x)$ under certain conditions,
such as when the initial guess is sufficiently close to the actual root and
the function behaves well (i.e., it is differentiable and its derivative is
not zero near the root).

Note that, upon convergence, we have $lim_(n -> oo) x_n = lim_(n -> oo) x_(n+1)$
and $lim_(n -> oo) f'(x_n) != 0$, per assumptions of the method.
Thus, taking limits on both sides of the iterative formula gives:
$
lim_(n -> oo) x_n = lim_(n -> oo) x_n - frac(lim_(n -> oo) f(x_n), lim_(n -> oo) f'(x_n))
$
and rearranging yields $lim_(n -> oo) f(x_n) = 0$,
which shows that the limit of the function values at the approximations
approaches zero, confirming that we are indeed approaching a root of the function.

= Gradient descent

The spirit of gradient descent is similar to that of Newton's method, but
instead of finding roots of a function, we are trying to find the minimum value
of a function.
Given a differentiable function $f(x)$, we can start with an initial guess
$x_0$ for the location of the minimum.
We then compute the derivative $f'(x_0)$, which gives us the slope of
the tangent line at that point.
To move towards the minimum, we take a step in the opposite direction of
the gradient (derivative) of the function: this is because the gradient points in
the direction of steepest ascent (as it is the _slope of the tangent line_),
so moving in the opposite direction will lead us towards a decrease in the
function value.
Provided a _fair_ guess $x_0$ and a _suitable_ step size $alpha > 0$,
we can update our guess using the formula:
$
x_(n+1) = x_n - alpha * f'(x_n)
$
By iteratively applying this update rule, we can converge to a local minimum
of the function $f(x)$.

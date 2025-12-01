#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00Template.typ": *
#show: main_format

#date_header
#make_title

This final exam review is designed to help you prepare for the actual final
exam.
It covers most of the topics discussed during the course.
It consists of six (6) sections for a total of 90 points.

*This constitutes 15% of your grade on the final exam.*
You must bring your completed review to the final exam.
You will be allowed to use it as a reference during the exam.
It must be handwritten, and you _may not_ use any electronic devices
during the exam.

= (15 points) Section 1: True or False

Determine whether each of the following statements is true or false.
If the statement is false, *provide* a brief explanation or a counterexample.
If the statement is true, *provide* a brief justification.
Each statement is worth *three (3) points*.
No partial credit will be given for answers without justification.

+ The function $f(x) = frac(1, x)$ *is continuous* at $x = 0$.
+ The function $g(x) = ln(x)$ *is increasing* for all real numbers $x in dom(g)$.
+ The function $h(x) = x^4$ *does not* have a global minimum.
+ The function $k(x) = x^3 - 2^x$ *has at least one* real root.
+ The product rule for derivatives states that $dv((u dot v), x) = dv(u, x) dot dv(v, x)$.

= (15 points) Section 2: Continuity and limits

Compute the following limits. Each limit is worth *three (3) points*.
You may use L'Hôpital's rule where appropriate.

+ $limits(lim)_(x -> 0^(+)) frac(ln(x), cot(x))$
+ $limits(lim)_(x -> oo) x^(frac(1, x))$
+ $limits(lim)_(x -> 3) frac(x^3 - 27, x^2 - 9)$

Determine if the following piecewise-defined function are continuous at the
given point.

$
f(x) =
cases(
  frac(x^2 - 4, x - 2) " if " x != 2,
  3 " if " x = 2,
)
wide " and " wide
g(x) = cases(
    sin(x) " if " x < pi,
    0 " if " x = pi,
    cos(x) " if " x > pi,
)
$
+ Is $f(x)$ continuous at $x = 2$? Justify your answer.
+ Is $g(x)$ continuous at $x = pi$? Justify your answer.

= (15 points) Section 3: Basic differentiation rules

State the following differentiation rules, for *one (1) point* each:
+ Linearity of the derivative (or sum rule and constant multiple rule)
+ Product rule
+ Chain rule

Differentiate the following functions. Each differentiation is worth
*three (3) points*.
+ $f(x) = 5 x^4 - 3 x^2 + 7$
+ $g(x) = (2 x^3 - x) (sin(x) + 4)$
+ $h(x) = sin(x^2) + ln(3 x - 1)$
+ $k(x) = frac(e^(2 x), x^2 + 1)$


= (15 points) Section 4: Implicit differentiation, related rates, and linear approximation

Each problem is worth *three (5) points*.

+ Consider Bobby Hill using a 10-foot ladder to reach over a fence so he may
  see Connie. Unfortunately, the ladder slips down the fence. At the moment
  when the bottom of the ladder is 6 feet from the fence, it is sliding away
  from the fence at a rate of 2 feet per second. How fast is the top of the
  ladder sliding down the fence at that moment?

+ An ellipse is defined by the equation $frac(x^2, 3^2) + frac(y^2, 4^2) = 1$.
  Find $dv(y,x)|_(x = 1, y = -frac(8 sqrt(2), 3))$, and write the equation of the
  tangent line to the ellipse at the point $(1, -frac(8 sqrt(2), 3))$.

+ Consider the function $f(x) = sin^2(x)$.
  Find the linear approximation of $f(x)$ at $a = frac(pi, 4)$
  and use it to approximate the value of $f$ evaluated at $x = frac(5 pi, 16)$.


= (15 points) Section 5: Optimization, mean value theorem

Each problem is worth *five (5) points*.

+ A farmer is planning to rebuild the barn on his property _and_ a fence around
  his livestock area, both of which are rectangular in shape.
  The barn is to be built along one side of the fenced area.
  The farmer wants to maximize the combined area of the barn and the fenced
  livestock area.
  Knowing that he has 600 feet of material to work with, what are the dimensions
  of the rectangular area that will maximize the combined area of the barn and
  the fenced livestock area, assuming that the barn is to be built along one
  side of the fenced area?

+ Find two numbers, whose sum is 20, such that the sum of their squares is
  minimized.

+ Verify the Mean Value Theorem for the function $f(x) = x^3 - x$ on the
  interval $[-1, 2]$.
  Find all points $c$ in the open interval $(−1, 2)$ that satisfy the conclusion
  of the Mean Value Theorem.

= (15 points) Section 6: Critical points, concavity, and curve sketching

Each question is worth *five (5) points*.
Consider the function $f(x) = 5 + 2 x - x^2/2 - (2 x^3)/3 + x^4/4$.

+ Find the critical points of $f(x)$.

+ Determine:
  - the intervals where $f(x)$ is increasing and decreasing,
  - the intervals where $f(x)$ is concave up and concave down,
  - the local maxima and minima of $f(x)$,

+ Determine:
  - the inflection points of $f(x)$.
  - the absolute maximum and minimum of $f(x)$ on the interval $[-1, 3]$.
  - an accurate sketch of the graph of $f(x)$.


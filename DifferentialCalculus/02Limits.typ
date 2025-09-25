#import "00Template.typ": *
#show: main_format

#date_header
#make_title

= What is a limit?

I like to think of limits of some sort of promise: for example, _if I wait long
enough, something will happen_.
There are several events of this nature, probably a good simple and physical
example would be _the description of heat_:
objects have a temperature, and it will fluctuate over time; suppose we have a
plate---or more concretely, a pan on your stove---that had a given behavior at
a given time---maybe you were cooking with the pan,
maybe you put in the freezer (no judgment).
Our question pertains to _will the (temperature of the) pan stabilize at some
point (in time)?_
The answer can be seen as a *limit process* regarding the general behavior of
heat.

== Mathematization of a limit

What are the key ingredients of a limit? There is something _to be approximated_,
and there is something that _will approximate it_.
We will see that _approximation_ entails both a notion of _distance_ and a
notion of _eventuality_: given a tolerance, there exists an _instance_, or we
verify a _criteria_ that ensures _we are close enough_.

=== A note on notation

We say that $f: X -> Y$ is a function mapping elements $x in X$
(reads as "$x$ in $X$")
to an element $f(x) in Y$.
Usually, we will work with real-valued mappings, i.e., $X = Y = RR$.
At times, for simplicity, we will *not* distinguish the domain of the function $f$
and the set $X$: this will be the crux of some problems in the future!
The domain of the function $f$ is $dom(f) = {x in X : f(x) in Y}$
and the image (or range) of the function $f$ is
$im(f) = {f(x) in Y : x in dom(f)}$.

When we have two sets $A, B subset.eq X$, their difference set is defined as
$A without B = { a in A : a  in.not B }$. For example, "all real numbers but
zero" can be written as the set $RR without {0}$.
Intervals are usually denoted with _parenthesis_ or _brackets_, depending on if
they contain the extreme points or not; consider, for example,
$[a,b) = { x in RR : a <= x < b }$.

=== Sequences

A sequence in a space#footnote[
  Here, _space_ means a _set_ (a collection of objects) endowed with some
  _structure_.
  Our preferred structure are _metric spaces_, i.e., we have a distance.
  We will go into it later, but it is *not* the main focus of the course.
]
$X$ is _basically_#footnote[
  The mathematical jargon may not be amicable, but makes it more fun to write
  about. (To be honest, I don't think I fully grasped the deep meaning of these
  concepts until taking more advanced classes and started to notice the repeated
  patterns).
]
a function $f: NN -> X$.
Usually, we will not see this: if we write $x_n = f(n)$ for all $n in NN$, we
get the common notation $x_1, x_2, x_3, dots$, or, sometimes, when making
emphasis on the set (i.e., the image of $f$, $im(f)$), we will write
${ x_1, x_2, x_3, dots}$#footnote[
  People have this awful habit of assuming that writing the head of a sequence
  is enough to understand the whole sequence.
  This is not true! Examples after this footnote will be given.
]

==== Examples

Let's fix $X$ to be $RR$.
Consider:
- $x_n = n$, i.e., $x_1 = 1, x_2 = 2, x_3 = 3, dots$.
  This is the sequence of natural numbers.
- $a_n = 1/n$, i.e., $a_1 = 1, a_2 = 1/2, a_3 = 1/3, dots$.
  This is the sequence of reciprocals of natural numbers
  #footnote[
    Notice how the identifier $a_n$ is not the same as $x_n$.
    Feel free to use whatever identifier you want, but be consistent!
    We prefer $n,m,l, i, j, k$ for natural numbers, and $x, y, z, a, b, c$ for real numbers.
  ]
- $b_n = frac(n(n+1),2)$, i.e., $b_1 = 1, b_2 = 3, b_3 = 6, dots$.

===== How much information is enough?

TL;DR: not enough, we need the _whole_ sequence.

Consider I gave you the sequence $1, 2, 3, 4, dots$.
You would say that the sequence is $x_n = n$, but I could have given you
the following sequence $z_n = n + (n-1)(n-2)(n-3)(n-4)$.
Notice that $z_1 = 1, z_2 = 2, z_3 = 3, z_4 = 4$, but
$z_5 = 5 + 4*3*2*1 = 29$, which is not $x_5 = 5$.

=== Limit of a sequence

A sequence $x_n$ has a limit (and that limit is $x$) if, for every _tiny small
distance_ $epsilon > 0$, there exists a _point in time_ $N in NN$ such that
_moving forward_, i.e., for all $n >= N$, we have that $|x_n - x| < epsilon$.
We write this as $lim_(n -> oo) x_n = x$, and we read it as "the limit of the
sequence $x_n$ as $n$ goes to infinity is $x$".

=== Function limits

In general, we would like to work with _more points_.
Consider a function $f: X -> Y$, and a point $c$ that is _approximable_ by
elements in $X$.
Let $y in Y$ be a known value.

We can define, similarly, that the limit of $f$ at $c$ is $y$ if,
for every _tiny small distance_ $epsilon > 0$, there exists _tiny small
distance (that depends on $epsilon$)_ $delta = delta(epsilon) > 0$ such that
given a point $x in X$ such that $0 < |x - c| < delta$ (this is, not equal to
$c$, but very close to it), we have that $|f(x) - y| < epsilon$.
We write this as $lim_(x -> c) f(x) = y$, and we read it as "the limit of the
function $f$ as $x$ approaches $c$ is $y$".

When we look at one specific side of $c$, we can write $lim_(x -> c^+) f(x) = y$,
which means that we are only considering points $x$ such that $x > c$.
Analogously, we can write $lim_(x -> c^-) f(x) = y$, which means that we are
only considering points $x$ such that $x < c$.

==== Examples

Let's fix $X$ to be $RR$ and $Y$ to be $RR$.
Consider:
- $f(x) = x$, i.e., the function $f$ is the identity function.
  The limit of $f$ at $c$ is $c$, i.e., $lim_(x -> c) f(x) = c$.
- $f(x) = 1/x$, i.e., the function $f$ is the reciprocal function.
  Notice that $f$ is not defined at $x = 0$, but we can still do some shenanigans,
  and we could say that, if we take $c = 0$, and *only allow* $x > 0$, then
  $lim_(x -> 0^+) f(x) = +oo$.
  If we take $c = 0$ and *only allow* $x < 0$, then
  $lim_(x -> 0^-) f(x) = -oo$.
- $f(x) = frac(x^2 - 1, x - 1)$, i.e., the function $f$ is a rational function.
  Notice that $f$ is not defined at $x = 1$: we cannot divide by zero.
  However, what happens if we get close to $x = 1$? We could do some algebra
  $
  frac(x^2 - 1, x - 1) = frac((x-1)(x+1), x-1) = x + 1
  $
  _whenever $x$ is not $1$_, so we can say that $lim_(x -> 1) f(x) = 2$.

== Basic limit properties

There are some basic properties of limits of functions that we can use.
Some of them are intuitive (and to some extent, redundant#footnote[
  Redundant in the sense of what is ahead in the course, when referring to 
  _continuity_, like continuity of sums, products, quotients, constants, etc.
]).

- *Constant function*: if $f(x) = c$ for all $x in X$, then
  $lim_(x -> c) f(x) = c$.
- *Identity function*: if $f(x) = x$ for all $x in X$, then
  $lim_(x -> c) f(x) = c$.
- *Substitution principle*: if $f(x) = g(x)$ for all $x in X$ except for
  $x = c$, and $g$ is defined at $c$, then
  $lim_(x -> c) f(x) = lim_(x -> c) g(x)$.
- *Linearity of the limit*: given two functions $f, g$ defined at $c$,
  and a scalar $alpha$, we have that
  - $lim_(x -> c) (f(x) + g(x)) = lim_(x -> c) f(x) + lim_(x -> c) g(x)$.
  - $lim_(x -> c) (alpha * f(x)) = alpha * lim_(x -> c) f(x)$.
- *Product and quotient of limits*: given two functions $f, g$ defined at $c$,
  - $lim_(x -> c) (f(x) * g(x)) = lim_(x -> c) f(x) * lim_(x -> c) g(x)$.
  - $lim_(x -> c) (frac(f(x),g(x)) = frac(lim_(x -> c) f(x),lim_(x -> c) g(x))$
    if $g(c) != 0$ and *both limits exist*.

=== Common indeterminate forms

There are some cases that require special attention, as they are not clear!
What happens when we have a limit of the form $0/0$ or $oo/oo$?
These are called _indeterminate forms_, and usually arrive from a naive
substitution.
There are *seven common indeterminate forms*.

#grid(
  columns: (2fr, 3fr),
  align: left + horizon,
  [
  - *Zero over zero*, i.e., $0/0$.
  - *Infinity over infinity*, i.e., $oo/oo$.
  - *Infinity minus infinity*, i.e., $oo - oo$.
  - *Zero times infinity*, i.e., $0 * oo$.
  - *One raised to infinity*, i.e., $1^oo$.
  - *Zero raised to zero*, i.e., $0^0$.
  - *Infinity raised to zero*, i.e., $oo^0$.
  ],
  [
    #block(
      title: "What to do?",
    )[
      Usually, _algebra is the answer_.
      For example, consider the limit $lim_(x -> 2) frac(x - 2,sqrt(x) - sqrt(2))$.
      If we substitute $x = 2$, we get $0/0$.
      We can do some algebra to rewrite the limit as
      $
      lim_(x -> 2) frac( (sqrt(x) - sqrt(2))(sqrt(x) + sqrt(2)), sqrt(x) - sqrt(2))
      = lim_(x -> 2) (sqrt(x) + sqrt(2)) = 2 sqrt(2).
      $
    ]
  ]
)

=== Common algebraic formulae

Don't ever forget your algebra! Here are some common algebraic formulae that
can help you simplify expressions and find limits more easily.

- *Difference of squares*: $a^2 - b^2 = (a - b)(a + b)$.
- *Sum of cubes*: $a^3 + b^3 = (a + b)(a^2 - a b + b^2)$.
- *Difference of cubes*: $a^3 - b^3 = (a - b)(a^2 + a b + b^2)$.
- *Sum of two squares*: $a^2 + b^2 = (a + b)^2 - 2 a b$.

Sometimes it is useful to change $a$ to $sqrt(a), root(3,a)$, etc.
- *Difference of two quantities*: $a - b = (sqrt(a) - sqrt(b))(sqrt(a) + sqrt(b))$.
- *Sum of two quantities*: $a + b = (sqrt(a) + sqrt(b))^2 - 2 sqrt(a b)$.
- *Sum of two quantities, but with cubes*: $a + b = (root(3,a) + root(3,b))(
(root(3,a^2) - root(3,a b) + root(3,b^2)
)$.

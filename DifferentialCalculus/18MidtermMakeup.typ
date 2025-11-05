#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00Template.typ": *
#show: main_format

= Midterm Exam - MTH 251Z 003

Name: #line(length: 100%)

+ This exam consists of six (6) sections for a total of *96 points*.
+ You have *100 minutes* to complete the exam.
+ Show *all* your work. Partial credit will be awarded for incomplete answers
  if your reasoning is clear. No credit will be given for unsupported answers.
+ *No electronic devices are allowed.* #footnote("DRC-exeptions apply")
  You will be asked to turn off and put away all electronic devices
  (including, but not limited to, cell phones, smart watches, tablets, laptops,
  and calculators) for the duration of the exam.
+ You will be provided with a formula sheet and scratch paper. No personal notes
  or textbooks are allowed.
+ If you finish early, you may leave quietly. Otherwise, please remain seated
  until the end of the exam.
+ You may ask the instructor or proctor for clarification of any question
  during the exam.
+ Return all _supporting_ work along with your exam; if the scratch paper
  does _not_ support your answers, do not include it.
+ If you read all instructions, draw your favorite geometric shape next to your
  name to earn two (2) extra credit points.
+ Partial credit may be awarded for logical but incorrect work based on work,
  for example, for committing arithmetic mistakes.
+ Good luck!

#line(length: 100%, stroke: psu-forest-green)

#exam-block()[
  Final Score:
  #line(length: 100%)
  Other observations:
  #v(2cm)
]

// Formulae
#exam-block()[
  Here are some useful formulae that you may need during the exam.
  - $(a + b)^2 = a^2 + 2a b + b^2$
  - $a^2 - b^2 = (a + b)(a - b)$
  - $a - b = (sqrt(a) - sqrt(b))(sqrt(a) + sqrt(b))$
  - $sin^2(x) + cos^2(x) = 1$
  - $cos(alpha) - cos(beta) = -2 sin(frac(alpha + beta, 2)) sin(frac(alpha - beta, 2))$
]


#pagebreak()
== (16 points) True or False
#line(length: 50%, stroke: psu-forest-green)

Determine whether each of the following statements is true or false.
If the statement is false, provide a brief explanation or a counterexample.
If the statement is true, you do not need to provide any explanation.
*Each statement is worth 4 points.*

#exam-block()[
  The function $f(x) = abs(x)$ is differentiable at $x = 0$.
]

#exam-block()[
  *Answer*
  #v(2cm)
]

#exam-block()[
  The limit of the function $f(x) = sin(1/x)$ as $x$ approaches 0
  does not exist.
]

#exam-block()[
  *Answer*
  #v(2cm)
]

#exam-block()[
  The function $f(x) = (x^2 - 4)/(x - 2)$ is continuous at $x = 2$.
]

#exam-block()[
  *Answer*
  #v(2cm)
]

#exam-block()[
  The function $f(x) = 1000^x - x^2 - 10$ has at least one real root (this is,
  there is at least one real number $c$ such that $f(c) = 0$).
  Hint: Try some simple values of $x$ to evaluate $f(x)$, like $x = 0$ or $x = 1$.
]

#exam-block()[
  *Answer*
  #v(2cm)
]

//#exam-block()[
//  If the lateral limits of a function $f(x)$ at a point $x = a$ exist but are
//  different, then $f(x)$ could still be continuous at $x = a$.
//]
//
//#exam-block()[
//  *Answer*
//  #v(1.5cm)
//]


#pagebreak()
== (16 points) Evaluate the limits
#line(length: 50%, stroke: psu-forest-green)

Compute the following limits. Please, carry out all necessary steps to justify
your answers, and carry out any algebraic simplifications needed.
If the limit does not exist, explain why; you may write "DNE" as your final
answer.
*Each limit is worth 4 points.*

#exam-block()[
  $limits(lim)_(x -> 2) (2 x^3 + 3 x^2 - x + 5)$
  #v(4cm)
]

#exam-block()[
  $limits(lim)_(x -> 0) frac(sin(7x), x)$
  #v(4cm)
]

#exam-block()[
  $limits(lim)_(x -> oo) frac(6 x^2 + 3 x - 2, 2 x^2 - 5x + 10)$
  #v(4cm)
]

// #exam-block()[
//   $limits(lim)_(x -> 1) frac(x^2 - 1, x - 1)$
//   #v(3cm)
// ]

#exam-block()[
  $limits(lim)_(x -> 0) frac(sqrt(x + 4) - 2, x)$
  #v(4cm)
]

#pagebreak()
= (16 points) Analysis of a piecewise-defined function
#line(length: 50%, stroke: psu-forest-green)

#exam-block()[
  1. (4 points) Construct a function $g(x)$ that has a *jump discontinuity* at
     $x = 0$, and sketch it.
  2. (4 points) Compute $lim_(x -> 0^-) g(x)$ and $lim_(x -> 0^+) g(x)$ for your
     function $g(x)$.
  #v(9cm)
]

#exam-block()[
  3. (4 points) Construct a function $h(x)$ that has a *removable discontinuity*
     at $x = -1$, and sketch it.
  4. (4 points) Compute $lim_(x -> -1^-) h(x)$ and $lim_(x -> -1^+) h(x)$ for your
      function $h(x)$.
  #v(9cm)
]


#pagebreak()
= (16 points) Qualitative analysis of a function
#line(length: 50%, stroke: psu-forest-green)

Given the graph @discontinuities of a function $f(x)$ shown below,
provide the following answers:

#figure(
  lq.diagram(
    lq.plot(lq.linspace(-2, -1), x => -x+1, mark: none, color: psu-blue),
    lq.plot(lq.linspace(-1, 1), x => -calc.sin(calc.pi * x) + 1, mark: none, color: psu-blue),
    lq.plot(lq.linspace(1, 2), x => -x*x + 2, mark: none, color: psu-blue),
    lq.ellipse(-1, 2, width: 0.1, height: 0.1, fill: psu-white, stroke: psu-blue, align: center),
    lq.ellipse(-1, 1, width: 0.1, height: 0.1, fill: psu-white, stroke: psu-blue, align: center),
    lq.ellipse(-1, 0, width: 0.1, height: 0.1, fill: psu-blue, stroke: psu-blue, align: center),
    lq.ellipse(1, 1, width: 0.1, height: 0.1, fill: psu-blue, stroke: psu-blue, align: center),
  ),
  caption: [The graph of a function $f(x)$.],
) <discontinuities>

#exam-block()[
  1. (8 points) Compute:
    - $f(-1)$, $lim_(x -> -1^-) f(x)$, and $lim_(x -> -1^+) f(x)$.
    - Conclude whether $f(x)$ is continuous at $x = -1$.
    - Can it be made continuous at $x = -1$ by redefining its value there?
  #v(6cm)
]

#exam-block()[
  2. (8 points) Compute:
    - $f(0)$, $lim_(x -> 1^-) f(x)$, and $lim_(x -> 1^+) f(x)$.
    - Conclude whether $f(x)$ is continuous at $x = 0$.
    - Can it be made continuous at $x = 0$ by redefining its value there?
  #v(6cm)
]

#pagebreak()
= (16 points) Limit algebra
#line(length: 50%, stroke: psu-forest-green)

Assume that $limits(lim)_(x -> a) f(x) = 3$, $limits(lim)_(x -> a) g(x) = -1$,
and $limits(lim)_(x -> a) h(x) = 10$. Compute the following limits using limit
laws. *Each limit is worth 4 points.*

#exam-block()[
  1. $limits(lim)_(x -> a) (f(x) + g(x) - h(x))$
  #v(4cm)
]

// #exam-block()[
//   2. (3 points) $limits(lim)_(x -> a) frac(f(x), g(x))$
//   #v(3cm)
// ]

#exam-block()[
  2. $limits(lim)_(x -> a) frac(h(x) - f(x), g(x) + 2)$
  #v(4cm)
]

#exam-block()[
  3. $limits(lim)_(x -> a) frac(f(x) g(x),h(x) - 5)$
  #v(4cm)
]

#exam-block()[
  4. $limits(lim)_(x -> 2 a) f(x/2) + g(x/2)$
  #v(4cm)
]

#pagebreak()
= (16 points) Derivatives
#line(length: 50%, stroke: psu-forest-green)

Compute the derivatives (by definition) of the following functions.
Show all necessary steps.
*Each derivative is worth 4 points.*

Remember that the derivative of a function $f(x)$ is defined as
$f'(a) = limits(lim)_(h -> 0) frac(f(a + h) - f(a), h)
= limits(lim)_(x -> a) frac(f(x) - f(a), x - a).$

#exam-block()[
  1. $f(x) = x$
  #v(3.5cm)
]

#exam-block()[
  2. $f(x) = 3 x^2$
  #v(3.5cm)
]

#exam-block()[
  3. $f(x) = 2 sqrt(x)$
  #v(3.5cm)
]

#exam-block()[
  4. $f(x) = - cos(x)$
  #v(3.5cm)
]

// #exam-block()[
//   5. $f(x) = 1/(x+1)$
//   #v(3.2cm)
// ]
#v(-0.25cm)
Remember that $cos(alpha) - cos(beta) = -2 sin(frac(alpha + beta, 2)) sin(frac(alpha - beta, 2))$.

#pagebreak()
= ((10 points)) Extra Credit
#line(length: 50%, stroke: psu-forest-green)

Consider the sequence defined as follows:
- $S_1 = 1$,
- $S_2 = 1 + 1/2$,
- $S_3 = 1 + 1/2 + 1/4$,
- and more generally, $S_n = 1 + 1/2 + 1/4 + ... + 1/(2^(n-1)) = sum_(k=0)^(n-1) 1/(2^k)$.
  #footnote([The scary looking summation symbol $sum$ indicates that we are summing from
  $k = 0$ to $k = n - 1$ the terms $1/(2^k)$.])

#exam-block()[
  1. (5 points) Check that $1/2 S_n = 1/2 + 1/4 + 1/8 + ... + 1 / (2^(n-1)) + 1/(2^(n))$.
     Conclude that $1/2 S_n = S_(n+1) - 1$.
  #v(6cm)
]

#exam-block()[
  2. (2 points) Given any (convergent) sequence $a_n$, argue why the limit of
     $a_(n+1)$ as $n$ approaches infinity is equal to the limit of $a_n$ as
     $n -> oo$.
  #v(3cm)
]

#exam-block()[
  3. (3 points) Using the previous two parts, compute the limit of the sequence
     $S_n$ as $n$ approaches infinity. (Hint: call $lim_(n -> oo) S_n = L$ and use
     the relation you found in part 1 to find an equation for $L$, then solve for
     $L$.)
  #v(6cm)
]

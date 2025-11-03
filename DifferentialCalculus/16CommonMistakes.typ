#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00template.typ": *
#show: main_format

#date_header
#make_title

= Common Mistakes in Differential Calculus (and How to Avoid Them!)

#block(
  title: "Adding fractions",
  color: psu-blue,
)[
  To add fractions, we need a common denominator!
]

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  block(
    title: "Incorrect",
    color: psu-red,
  )[
    $
    a/b + c/d = (a+c)/(b+d)
    $
  ],
  block(
    title: "Correct",
    color: psu-electric-green,
  )[
    $
    a/b + c/d = (a d + b c)/(b d)
    $
  ]
)

#block(
  title: "Example: difference of fractions",
  color: psu-blue,
)[
  Consider the limit $lim_(h -> 0) frac(1/(x+h) - 1/x, h)$.
  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    block(
      title: "Don't do this",
      color: psu-red,
    )[
      $
      1/(x+h) - 1/x = 1/(x+h-x) = 1/h
      $
    ],
    block(
      title: "Do this instead",
      color: psu-electric-green,
    )[
      $
      1/(x+h) - 1/x &= (x - (x+h))/(x(x+h)) \
      &= (-h)/(x(x+h))
      $
    ]
  )
]

=== Distributing Division Over a Product

#block(
  title: "Division and Distribution",
  color: psu-blue,
)[
  Division distributes over _addition_, not multiplication!
]

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  block(
    title: "Incorrect",
    color: psu-red,
  )[
    $
    (a dot b)/c = a/c dot b/c
    $
  ],
  block(
    title: "Correct",
    color: psu-electric-green,
  )[
    $
    (a dot b)/c = a/c dot b = a dot b/c
    $
    Also correct:
    $
    (a + b)/c = a/c + b/c
    $
  ]
)


#block(
  title: "Distributing multiplication over all terms",
  color: psu-blue,
)[
  Multiplication distributes over addition, but you must distribute over _all_ terms!
]

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  block(
    title: "Incorrect",
    color: psu-red,
  )[
    $
    a(b + c) = a b + c
    $
    $
    (a + b)^2 = a^2 + b^2
    $
  ],
  block(
    title: "Correct",
    color: psu-electric-green,
  )[
    $
    a(b + c) = a b + a c
    $
    $
    (a + b)^2 = (a + b)(a + b) = a^2 + 2a b + b^2
    $
  ]
)


#block(
  title: "Use parentheses to clarify order of operations",
  color: psu-blue,
)[
  Parentheses are your friends! They clarify which operations to perform first and help prevent mistakes.
]

#block(
  title: "Example: function evaluation in a compound expression",
  color: psu-blue,
)[
  When computing $f(x+h)$ where $f(x) = 1/(x^2 + 1)$:
  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    block(
      title: "Incorrect",
      color: psu-red,
    )[
      $
      f(x+h) = 1/(x^2 + h^2 + 1)
      $
    ],
    block(
      title: "Correct",
      color: psu-electric-green,
    )[
      $
      f(x+h) &= 1/((x+h)^2 + 1) \
      &= 1/(x^2 + 2x h + h^2 + 1)
      $
    ]
  )
]


#block(
  title: "Amplifying fractions",
  color: psu-blue,
)[
  When amplifying fractions, remember to multiply _both_ numerator and denominator by the same factor.
]

#block(
  title: "Example: difference quotient amplification",
  color: psu-blue,
)[
  Simplify $frac(1/(x+h) - 1/x, h)$
  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    block(
      title: "Incorrect",
      color: psu-red,
    )[
      $
      frac(1/(x+h) - 1/x, h) = frac(x - (x+h), h)
      $
    ],
    block(
      title: "Correct",
      color: psu-electric-green,
    )[
      $
      frac(1/(x+h) - 1/x, h)
      &= frac(1/(x+h) - 1/x, h) dot (x(x+h))/(x(x+h)) \
      &= frac(x - (x+h), h x(x+h)) \
      &= frac(-h, h x(x+h)) = (-1)/(x(x+h))
      $
    ]
  )
]


#block(
  title: "Difference of Squares",
  color: psu-blue,
)[
  *Remember:* $a^2 - b^2 = (a - b)(a + b)$
  
  *Special case:* $a - b = (sqrt(a) - sqrt(b))(sqrt(a) + sqrt(b))$ when $a, b >= 0$
]

#block(
  title: "Example: limit with square roots",
  color: psu-blue,
)[
  Evaluate $lim_(x -> 4) frac(x - 4, sqrt(x) - 2)$
  Direct substitution gives $0/0$. Use the "conjugate" to simplify:
  $
  lim_(x -> 4) frac(x - 4, sqrt(x) - 2) 
  &= lim_(x -> 4) frac(x - 4, sqrt(x) - 2) dot (sqrt(x) + 2)/(sqrt(x) + 2) \
  &= lim_(x -> 4) frac((x - 4)(sqrt(x) + 2), x - 4) \
  &= lim_(x -> 4) (sqrt(x) + 2) = 4
  $
]

#block(
  title: "Expanding Binomials - avoid the freshman mistake!",
  color: psu-blue,
)[
  *Important formulas:*
  - $(a + b)^2 = a^2 + 2a b + b^2$ (not $a^2 + b^2$!)
  - $(a - b)^2 = a^2 - 2a b + b^2$
  - $(a + b)^3 = a^3 + 3a^2 b + 3a b^2 + b^3$ (not $a^3 + b^3$!)
]

#block(
  title: "Example: expanding a function",
  color: psu-blue,
)[
  Find $f(x + h)$ if $f(x) = x^2$
  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    block(
      title: "Incorrect",
      color: psu-red,
    )[
      $
      f(x + h) = x^2 + h^2
      $
    ],
    block(
      title: "Correct",
      color: psu-electric-green,
    )[
      $
      f(x + h) = (x + h)^2 = x^2 + 2x h + h^2
      $
    ]
  )
]


#block(
  title: "Function substitution",
  color: psu-blue,
)[
  When evaluating $f("something")$, replace _every_ occurrence of the variable with $"something"$ (in parentheses!).
]

#block(
  title: "Substitution with addition",
)[
  If $f(x) = x^2 + 3x$, find $f(a + b)$:

  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    block(
      title: "Incorrect",
      color: psu-red,
    )[
      $
      f(a + b) = a^2 + b^2 + 3a + 3b
      $
      or
      $
      f((a+b)^2)
      $
    ],
    block(
      title: "Correct",
      color: psu-electric-green,
    )[
      $
      f(a + b) &= (a + b)^2 + 3(a + b) \
      &= a^2 + 2a b + b^2 + 3a + 3b
      $
    ]
  )
]


#block(
  title: "Not all functions are continuous",
  color: psu-orange,
)[
  Not all functions are continuous at all points!
]

#block(
  title: "Example: removable discontinuity",
  color: psu-blue,
)[
  Consider $f(x) = (x^2 - 1)/(x - 1)$ at $x = 1$:

  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    block(
      title: "Incorrect",
      color: psu-red,
    )[
      $
      lim_(x -> 1) f(x) = f(1) = (1^2 - 1)/(1 - 1) = 0/0 = "DNE"
      $
    ],
    block(
      title: "Correct",
      color: psu-electric-green,
    )[
      $
      lim_(x -> 1) (x^2 - 1)/(x - 1) 
      &= lim_(x -> 1) ((x-1)(x+1))/(x-1) \
      &= lim_(x -> 1) (x + 1) = 2
      $
      
      Note: $f(1)$ is undefined!
    ]
  )
]

#block(
  title: "Limits requires an argument!",
  color: psu-blue,
)[
  The limit operator $lim_(x -> a)$ must be followed by a function of $x$.
  The limit operator $lim_(n -> +oo)$ must be followed by a sequence term in $n$.

  - Leaving it blank is incomplete!
  - After substituting, you must have a value, not a limit!
]

#block(
  title: "Example: Incomplete vs Complete limits",
  color: psu-blue,
)[
  Evaluate $lim_(x -> 2) x^2$
  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    block(
      title: "Incomplete:",
      color: psu-red,
    )[
      $
      lim_(x -> 2) = 4
      $
    ],
    block(
      title: "Complete:",
      color: psu-electric-green,
    )[
      $
      lim_(x -> 2) x^2 = 4
      $
    ]
  )
]


#block(
  title: "Substitution vs Limit Taking",
  color: psu-orange,
)[
  *Remember:* Once you substitute, you're no longer taking a limit!
]

#block(
  title: "Example: limit evaluation",
  color: psu-blue,
)[

  Evaluating $lim_(x -> 3) (x + 1)$:
  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    block(
      title: "Incorrect:",
      color: psu-red,
    )[
      $
      lim_(x -> 3) (x + 1) = lim_(x -> 3) 4 = 4
      $
    ],
    block(
      title: "Correct:",
      color: psu-electric-green,
    )[
      $
      lim_(x -> 3) (x + 1) = 3 + 1 = 4
      $
      or
      $
      lim_(x -> 3) (x + 1) = 4
      $
    ]
  )
]

== Definitions: Continuity and Differentiability

=== Continuity

A function $f$ is *continuous* at $x = a$ if:
+ $f(a)$ is defined and exists;
+ $lim_(x -> a) f(x)$ exists:
  - in some cases, this may require checking left-hand and right-hand limits separately;
  - if *both* one-sided limits exist and *are equal*, then the two-sided limit exists and equals that common value;
  - this is, if $lim_(x -> a^-) f(x) = lim_(x -> a^+) f(x) = L$, then $lim_(x -> a) f(x) = L$;
+ $lim_(x -> a) f(x) = f(a) = L$.

All *three* conditions must be satisfied!

=== Differentiability

A function $f$ is *differentiable* at $x = a$ if the following limit exists:

$
f'(a) = lim_(h -> 0) frac(f(a + h) - f(a), h)
$

#block(
  title: "Differentiability implies continuity",
  color: psu-orange,
)[
  *Important fact:* If $f$ is differentiable at $a$, then $f$ is continuous at $a$. However, continuity does _not_ guarantee differentiability!
]

#block(
  title: "Non-differentiable continuous function",
  color: psu-orange,
)[
  $f(x) = |x|$ is continuous at $x = 0$ but not differentiable there.
]


#block(
  title: "Indeterminate Forms",
  color: psu-blue,
)[
  Always try direct substitution first to identify what kind of limit you're dealing with!
  The common indeterminate forms are:
  
  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    align: left + horizon,
    [
      - $0/0$ (zero over zero)
      - $oo/oo$ (infinity over infinity)
      - $oo - oo$ (infinity minus infinity)
      - $0 dot oo$ (zero times infinity)
    ],
    [
      - $1^oo$ (one raised to infinity)
      - $0^0$ (zero raised to zero)
      - $oo^0$ (infinity raised to zero)
    ]
  )
]

#block(
  title: "Sine over the argument",
  color: psu-blue,
)[
  For $lim_(x -> 0) frac(sin(x), x)$:
  1. substituting $x = 0$ gives $0/0$ (indeterminate)
  2. This tells us we need to use a special technique (in this case, a known limit)
]

#block(
  title: "Don't assume properties not given",
  color: psu-red,
)[
  Do _not_ assume properties like linearity, continuity, or differentiability
  unless explicitly stated or proven!
]

#block(
  title: "Linearity of limits",
  color: psu-blue,
)[
  *Warning:* Most functions are _not_ linear! Don't assume $f(a x) = a f(x)$ unless you know $f$ is linear.
  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    block(
      title: "Incorrect",
      color: psu-red,
    )[
      $
      sin(5x) = 5 sin(x)
      $
      $
      sqrt(4x) = 4 sqrt(x)
      $
      $
      e^(2x) = 2 e^x
      $
    ],
    block(
      title: "Correct",
      color: psu-electric-green,
    )[
      $
      sin(5x) eq.not 5 sin(x)
      $
      $
      sqrt(4x) = 2 sqrt(x)
      $
      $
      e^(2x) = (e^x)^2
      $
    ]
  )
]


#block(
  title: "On the target value of limits",
  color: psu-blue,
)[
  The target value $a$ is just a number, and we cannot factor constants out of it!
  #grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    block(
      title: "Incorrect",
      color: psu-red,
    )[
      $
      lim_(x -> lambda a) f(x) = lambda lim_(x -> a) f(x)
      $
    ],
    block(
      title: "Correct",
      color: psu-electric-green,
    )[
      $
      lim_(x -> a) (lambda f(x)) = lambda lim_(x -> a) f(x)
      $
    ]
  )
]


#block(
  title: "Example: limit with a constant factor",
  color: psu-blue,
)[
  If $lim_(x -> 2) f(x) = 5$, this does _not_ mean $lim_(x -> 4) f(x) = 10$!
  However, $lim_(x -> 2) (3 f(x)) = 3 dot lim_(x -> 2) f(x) = 3 dot 5 = 15$

  A more concrete example: consider $f(x) = x + 3$.
  - $lim_(x -> 2) f(x) = 2 + 3 = 5$
  - $lim_(x -> 4) f(x) = 4 + 3 = 7$ (not $10$)
]


#block(
  title: "General tips to avoid mistakes",
  color: psu-green,
)[
  1. *Write clearly:* Use parentheses generously and show your work step by step.
  
  2. *Check yourself:* After each step, ask "Does this make sense?"
  
  3. *Know your algebra:* Many calculus problems are really algebra problems in disguise.
  
  4. *Understand definitions:* Make sure you know what continuity, limits, and derivatives actually mean.
  
  5. *Practice:* The more problems you solve carefully, the more these patterns will become natural.
]

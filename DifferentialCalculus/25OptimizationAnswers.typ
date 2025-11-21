#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00Template.typ": *
#show: main_format

#date_header
#make_title

= Optimization

1. Consider you are designing a rectangular garden that is to be fenced on all
   four sides. At the moment, you only have 360 yards of fencing material. What
   dimensions will maximize the area of the garden?
   _Hint:_ Let $x$ and $y$ be the lengths of the sides of the rectangle.
   Write the perimeter constraint and the area function in terms of $x$ and $y$.
   Then, use the perimeter constraint to write the area function in terms of a
   single variable. Finally, find the maximum of that function.

#block(
  title: "Answer",
)[
  Remember that the area of a rectangle of sides $x$ and $y$ is given by
  $A = x y$, and that the perimeter is given by $P = 2x + 2y$.
  Since the perimeter is constrained to be 360 yards, we have the equation
  $2x + 2y = 360$.
  Solving for $y$, we get $y = 180 - x$.

  Substituting this expression for $y$ into the area function, we get
  $A(x) = x (180 - x) = 180x - x^2$.
  To find the maximum of this function, we take the derivative and set it to zero:
  $A'(x) = 180 - 2x = 0$.
  Solving for $x$, we find $x = 90$ yards.
  Substituting back into the expression for $y$, we find $y = 180 - 90 = 90$ yards.
  Therefore, the dimensions that maximize the area of the garden are
  $90 ["yards"] " x " 90 ["yards"].$
  This is, in fact, a square of area $8100 ["yards"^2]$.
]

2. A cellphone company has decided to outsource the manufacture of
   RISC-V microprocessors for its new line of smartphones.
   The foreign company has determined that the cost $cal(C) ["USD"]$ to produce
   $x ["thousands"]$ of microprocessors is given by the function
   $
   cal(C)(x) = 10000 - 5000 x + 200 x^2.
   $
   How many microprocessors should the company order to minimize the cost
   per unit?
   What is the _base cost_ (the cost when no microprocessors are ordered)
   of production?

#block(
  title: "Answer",
)[
  The cost function is given by $cal(C)(x) = 10000 - 5000 x + 200 x^2$.
  To find the minimum cost per unit, we compute the derivative of the cost
  function and set it to zero:
  $cal(C)'(x) = -5000 + 400 x = 0$.
  Solving for $x$, we find $x = 12.5$ thousands of microprocessors.
  Therefore, the company should order $12500$ microprocessors to minimize the
  cost per unit.

  The base cost of production, which is the cost when no microprocessors are
  ordered, is given by $cal(C)(0) = 10000$ USD.
]

3. A formula-one car is being tested on a straight track: the goal is to
   determine the stop distance of the car when different initial speeds
   $v_0 ["m/s"]$ and different braking forces $F ["N"] = m ["kg"] a ["m/s^2"]$
   are applied.

  - Suppose the car has mass $m = 800 ["kg"]$ and that the braking force
    applied is constant and equal to $F = 16000 ["N"]$.
    Moreover, assume that the car is initially moving at speed
    $v_0 = 50 ["m/s"]$, and assume that the formula for the travelled distance
    (until the car comes to a complete stop) is given by
    $
    x(t) = alpha t^2 / 2 + beta t + gamma,
    $
    where $alpha$, $beta$, and $gamma$ are constants to be determined.
    Find the values of $alpha$, $beta$, and $gamma$.
    _Hint:_ Recall that acceleration is the second derivative of position with
    respect to time, and that velocity is the first derivative of position with
    respect to time.

  - Using the values of $alpha$, $beta$, and $gamma$ found in the previous
    part, find the time $t_f$ at which the car comes to a complete stop.
    Then, find the distance $x_f$ travelled by the car until it comes to a
    complete stop.
    _Hint:_ The car comes to a complete stop when its velocity is zero.

#block(
  title: "Answer",
)[
  - The braking force $F$ is related to the acceleration $a$ by the equation
    $F = m a$.
    Solving for $a$, we get $a = F / m = 16000 / 800 = 20 ["m/s^2"]$.
    Since the car is decelerating, the acceleration is negative, so we have
    $a = -20 ["m/s^2"]$.

    Recall that velocity is the first derivative of position with respect to time,
    and acceleration is the second derivative of position with respect to time.
    Given $x(t) = alpha t^2 / 2 + beta t + gamma$, we have:
    - Velocity: $v(t) = x'(t) = alpha t + beta$.
    - Acceleration: $a(t) = x''(t) = alpha$.

    Since the acceleration is constant and equal to $-20 ["m/s^2"]$, we have
    $alpha = -20$.
    The initial velocity is given by $v(0) = beta = 50 ["m/s"]$.
    The initial position is given (for convenience) by $x(0) = gamma = 0 ["m"]$.
    Therefore, the values of the constants are:
    $alpha = -20$, $beta = 50$, and $gamma = 0$.

  - To find the time $t_f$ at which the car comes to a complete stop, we set
    the velocity to zero:
    $v(t_f) = -20 t_f + 50 = 0$.
    Solving for $t_f$, we find $t_f = 2.5 ["s"]$.
    To find the distance $x_f$ travelled by the car until it comes to a complete
    stop, we substitute $t_f$ into the position function:
    $x_f = x(2.5) = -20 (2.5)^2 / 2 + 50 (2.5) + 0 = 62.5 ["m"]$.
    Therefore, the car comes to a complete stop after travelling a distance of
    $62.5 ["m"]$.
]

4. A rectangular box with a square base and open-top is to have a volume
   of $V = 729 ["m^3"]$. Find the dimensions of the box that minimize
   the surface area.
   _Hint:_ Let $x$ be the length of a side of the square base, and let $y$ be
   the height of the box. Write the volume constraint and the surface area
   function in terms of $x$ and $y$. Then, use the volume constraint to write
   the surface area function in terms of a single variable. Finally, find
   the minimum of that function.

#block(
  title: "Answer",
)[
  The volume of the box is given by $V = x y z$, where
  $x$ is the length, $y$ is the height, and $z$ is the width of the box.
  Since the base is square, we have $x = z$.
  Therefore, the volume can be expressed as $V = x^2 y$.
  Given that the volume is constrained to be $729 ["m^3"]$, we have the equation
  $x^2 y = 729$.
  Solving for $y$, we get $y = 729 / x^2$.

  The surface area of the box (with an open top) is given by
  $S = x z + 2 x y + 2 z y$.
  Since $x = z$, we can rewrite this as
  $S = x^2 + 4 x y$.
  Substituting the expression for $y$ into the surface area function, we get
  $S(x) = x^2 + 4 x (729 / x^2) = x^2 + 2916 / x$.
  To find the minimum of this function, we take the derivative and set it to zero:
  $S'(x) = 2x - 2916 / x^2 = 0$.
  Solving for $x$, we find $x^3 = 1458$, which gives
  $x = root(3, 1458) approx 11.33 ["m"]$.
  Substituting back into the expression
  for $y$, we find $y = 729 / root(3, 1458)^2 approx 64.28 ["m"]$.
  Therefore, the dimensions that minimize the surface area of the box are
  approximately $11.33 ["m"] x 11.33 ["m"] x 64.28 ["m"]$.
]


5. Find two non-negative numbers whose sum is 50 and whose product is
   maximum.

#block(
  title: "Answer",
)[
  Let the two non-negative numbers be $x$ and $y$.
  We have the constraint $x + y = 50$.
  Solving for $y$, we get $y = 50 - x$.

  The product of the two numbers is given by $P = x y$.
  Substituting the expression for $y$ into the product function, we get
  $P(x) = x (50 - x) = 50x - x^2$.
  To find the maximum of this function, we take the derivative and set it to zero:
  $P'(x) = 50 - 2x = 0$.
  Solving for $x$, we find $x = 25$.
  Substituting back into the expression for $y$, we find $y = 50 - 25 = 25$.
  Therefore, the two non-negative numbers that maximize the product are
  $25$ and $25$, with a maximum product of $625$.
]

6. You find yourself on the edge of a slowly moving river that is 1 $["mi"]$
   wide. You wish to return to your friends who are located on the opposite bank,
   2 $["mi"]$ downstream from your current position, next to the river.
   You can run at a speed of 1 $["mi/h"]$ on land and swim at a speed of
   $1/2 ["mi/h"]$ in the water. Considering you want to swim first and then
   run--so you can dry off as soon as possible--show:
  
  - The optimal path to take to minimize the total time to reach your friends.

  - The minimum time it will take to reach your friends following that path.

  - The (minimum) distance you will have to swim; the (minimum) distance you will
    have to run.

  - _Hint:_ Let $x = x(t)$ be the distance (along the opposite bank) from the point
    directly across the river from you to the campfire where your friends
    are located. Use Pythagoras' theorem to express the distance you will have to
    swim as a function of $x$.

#block(
  title: "Answer",
)[
  Let $x$ be the distance (along the opposite bank) from the point directly
  across the river from you to the point where you will land after swimming.
  The distance you will have to swim is given by the hypotenuse of a right
  triangle with legs of length $1$ (the width of the river) and $x$.
  Using Pythagoras' theorem, the distance you will have to swim is
  $d_(sans("swim"))(x) = sqrt(1^2 + x^2) = sqrt(1 + x^2)$.

  The distance you will have to run is given by
  $d_(sans("run"))(x) = 2 - x$.

  The time taken to swim is given by
  $t_(sans("swim"))(x) = d_(sans("swim"))(x) / (1/2) = 2 sqrt(1 + x^2)$.
  The time taken to run is given by
  $t_(sans("run"))(x) = d_(sans("run"))(x) / 1 = 2 - x$.
  Therefore, the total time taken to reach your friends is
  $T(x) = t_(sans("swim"))(x) + t_(sans("run"))(x) = 2 sqrt(1 + x^2) + (2 - x)$.

  To find the minimum of this function, we take the derivative and set it to zero:
  $T'(x) = (2x / sqrt(1 + x^2)) - 1 = 0$.
  Solving for $x$, we first note that $2 x = sqrt(1 + x^2)$.
  Before squaring both sides, note that $x$ must be non-negative, as $ 2 x$ is
  equal to a square root, and *must* be non-negative.
  Squaring both sides, we get $4 x^2 = 1 + x^2$, which simplifies to $3 x^2 = 1$.
  Therefore, we have $x = 1 / sqrt(3) = sqrt(3) / 3$.

  Taking the second derivative to confirm that this is a minimum, we have
  $
  T''(x) & = frac(2, (1 + x^2)^(1/2)) - frac(2 x^2, (1 + x^2)^(3/2)) \
          & = frac(2, (1 + x^2)^(3/2)) ((1 + x^2) - x^2) \
          & = frac(2, (1 + x^2)^(3/2)) > 0.
  $
  Since the second derivative is positive, we have confirmed that this is a
  minimum.

  The optimal path to take is to swim to the point on the opposite bank that is
  approximately $sqrt(3) / 3 approx 0.577 ["mi"]$ downstream from the point directly
  across the river from you, and then run the remaining distance to your friends.

  Substituting $x = sqrt(3) / 3$ into the total time function, we get
  $T(sqrt(3) / 3) approx 3.73 ["h"]$.
  Therefore, the minimum time it will take to reach your friends is approximately
  $3.73 ["h"]$. 

  The distance you will have to swim is
  $d_(sans("swim"))(sqrt(3) / 3) = sqrt(1 + (sqrt(3) / 3)^2) = sqrt(1 + 1/3) = sqrt(4/3) = 2 sqrt(3) / 3 approx 1.155 ["mi"]$.
  The distance you will have to run is
  $d_(sans("run"))(sqrt(3) / 3) = 2 - (sqrt(3) / 3) approx 1.423 ["mi"]$.
]

7. What is the angle $theta ["rad"]$ that maximizes the area of an
   isosceles triangle of side length $ell = 3 ["m"]$?
    _Hint:_ You may use Heron's formula (+5 respect points) or right-triangle
    trigonometry (+3 respect points) to express the area of the triangle
    as a function of $theta$.
  
#block(
  title: "Answer",
)[
  Using right-triangle trigonometry, we can express the area of the triangle
  as a function of $theta$.
  The area of the triangle is given by
  $A(theta) = (1/2) "base" "height"$.
  The base of the triangle can be expressed as
  $"base" = 2 (ell sin(theta / 2)) = 2 (3 sin(theta / 2)) = 6 sin(theta / 2)$.
  The height of the triangle can be expressed as
  $"height" = ell cos(theta / 2) = 3 cos(theta / 2)$.
  Therefore, the area of the triangle is
  $A(theta) = (1/2) (6 sin(theta / 2)) (3 cos(theta / 2)) = 9 sin(theta / 2) cos(theta / 2)$.
  Using the double-angle identity for sine, we can rewrite this as
  $A(theta) = (9/2) sin(theta)$.
  To find the maximum of this function, we take the derivative and set it to zero:
  $A'(theta) = (9/2) cos(theta) = 0$
  Solving for $0<=theta<2 pi$, we find $theta = pi / 2$.
  Taking the second derivative to confirm that this is a maximum, we have
  $A''(theta) = -(9/2) sin(theta)$.
  Substituting $theta = pi / 2$ into the second derivative, we get
  $A''(pi / 2) = -(9/2) sin(pi / 2) = -(9/2) < 0$.
  Since the second derivative is negative, we have confirmed that this is a maximum.
  Therefore, the angle that maximizes the area of the isosceles triangle is
  $theta = pi / 2 ["rad"]$.
]

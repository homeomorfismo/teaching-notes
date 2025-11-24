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
   _Hint:_ Let x and y be the lengths of the sides of the rectangle.
   Write the perimeter constraint and the area function in terms of x and y.
   Then, use the perimeter constraint to write the area function in terms of a
   single variable. Finally, find the maximum of that function.

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

4. A rectangular box with a square base and open-top is to have a volume
   of $V = 729 ["m^3"]$. Find the dimensions of the box that minimize
   the surface area.
   _Hint:_ Let $x$ be the length of a side of the square base, and let $y$ be
   the height of the box. Write the volume constraint and the surface area
   function in terms of $x$ and $y$. Then, use the volume constraint to write
   the surface area function in terms of a single variable. Finally, find
   the minimum of that function.

5. Find two non-negative numbers whose sum is 50 and whose product is
   maximum.

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

7. What is the angle $theta ["rad"]$ that maximizes the area of an
   isosceles triangle of side length $ell = 3 ["m"]$?
    _Hint:_ You may use Heron's formula (+5 respect points) or right-triangle
    trigonometry (+3 respect points) to express the area of the triangle
    as a function of $theta$.

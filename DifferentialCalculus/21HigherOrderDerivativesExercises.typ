#import "@preview/lilaq:0.5.0" as lq
#import "@preview/physica:0.9.6": *

#import "00Template.typ": *
#show: main_format

#date_header
#make_title

Feel free to use a calculator for arithmetic calculations.

= Units and rate of change

1. Newton's cooling law states that the rate of change of the temperature $T(t)$
   of an object is proportional to the difference between the temperature of
   the object and the ambient temperature $T_a$.

   a. Can you write the mathematical equation that describes this law?

   b. If the ambient temperature is constant, what is the value of the function
      $T(t)$? Verify your intuition comparing it to the equation you wrote in
      part (a).

   c. What are the units of:

      i. $T(t)$

      ii. $T_a$

      iii. $dv(T,t)$

      iv. the proportionality constant

2. A ball is thrown vertically upward from the top of a building.
   The height $h(t)$ (in meters) of the ball at time $t$ (in seconds) is given by
   $
   h(t) = -5 t^2 + 5 t + 300 ["m"]
   $

   a. What are the units of:

      i. $t$

      ii. $h(t)$

      iii. $dv(h,t)$

      iv. $dv(h,t,2)$

      iv. The factors $-10$, $5$, and $300$

   b. What is the physical meaning of $dv(h,t)$? What is its value when $t = 0$?

   c. What is the physical meaning of $dv(h,t,2)$? What is its value when $t = 0$?

   d. When does the ball reach its maximum height? What is that height?

   e. When does the ball hit the ground?

   f. What is the velocity of the ball when it hits the ground?

   g. What is the acceleration of the ball when it hits the ground?

3. A (ideally spherical) balloon is being inflated in such a way that its radius
   $r(t)$ (in centimeters) increases at a constant rate of $2 ["cm"/"s"]$.

   a. Write an expression for the radius $r(t)$ at time $t$ seconds, if the
      initial radius is $5 ["cm"]$.

   b. What are the units of:

      i. $r(t)$

      ii. $t$

      iii. $dv(r,t)$

      iv. The constant rate of increase of the radius

   c. Write an expression for the volume $V(t)$ (in cubic centimeters) of the
      balloon at time $t$ seconds.

   d. What are the units of:

      i. $V(t)$

      ii. $dv(V,t)$

      iii. $dv(V,t,2)$

   e. At what rate is the volume of the balloon increasing when the radius is
      $10$ cm?

4. Investigate what the SRI model is: what is the rate of change of the whole
    population according to this model? (You need to sum all of the different
    variables/rates of change to get the total population rate of change.)

= Implicit differentiation

1. Consider an "elliptic curve" defined by the equation
   $
   y^2 = x^3 + a x + b
   $
   where $a$ and $b$ are constants.
   Use implicit differentiation to find an expression for $dv(y,x)$ in terms
   of $x$, $y$, $a$, and $b$.

2. Consider $e^(x^2 + y^2) = e x y$.

   a. Use implicit differentiation to find an expression for $dv(y,x)$ in terms
      of $x$ and $y$.

   b. Find the equation of the tangent line to the curve at the point $(sqrt(2)/2,
      sqrt(2)/2)$.

3. The volume of a sphere of radius $r$ is given by the formula
   $V = (4/3) pi r^3$.
   The area of the surface of the sphere is given by the formula
   $A = 4 pi r^2$.
   
    a. Use implicit differentiation to find an expression for $dv(r, A)$ in terms
        of $r$ and $A$.

    b. Use implicit differentiation to find an expression for $dv(V, A)$ in terms
        of $r$, $V$, and $A$.

= Find the extrema

Find the local extrema of the following functions:
1. $f(x) = -x^2 + 3 x - 2$ over $[-1, 3]$.
2. $f(x) = x^2 - 3 root(3,x^2)$ over $[0, 2]$.
3. $f(x) = sin(x) + x$ over $[-2 pi, 2 pi]$.

// = Applied optimization
// 
// == Token Embedding Dimension Cost-Performance Trade-off
// 
// A machine learning startup is training a language model and must choose the
// optimal token embedding dimension.
// The model's performance score (0-100 scale) as a function of embedding
// dimension $d$ is modeled by:
// $
// P(d) = 85 - 2400/d - 0.008d
// $
// The computational cost (in dollars per training epoch) is given by:
// $
// C(d) = 50 + 0.15d + 0.0002d^2
// $
// 
// The company wants to maximize the *efficiency ratio* defined as:
// $ E(d) = P(d)/C(d) $
// where $128 <= d <= 1024$ (typical embedding dimensions are powers of 2, but
// treat $d$ as continuous for this problem).
// 
// *Find* the embedding dimension that maximizes efficiency, and calculate the
// maximum efficiency ratio.
// 
// == Tokenizer Vocabulary Size vs. Training Cost
// 
// A research team is designing a tokenizer for a new language model. The relationship between vocabulary size $v$ (in thousands) and downstream task accuracy is:
// 
// $ A(v) = 92(1 - e^(-0.3v)) $
// 
// However, larger vocabularies increase training costs. The total cost (in thousands of dollars) for training with vocabulary size $v$ is:
// 
// $ C(v) = 15v + 0.8v^2 + 200 $
// 
// The team has a budget constraint: they want to maximize accuracy while keeping the *marginal cost-to-accuracy ratio* reasonable. Define the value function:
// 
// $ V(v) = A(v) - lambda C(v) $
// 
// where $lambda = 0.05$ represents the cost penalty factor, and $10 <= v <= 50$ thousand tokens.

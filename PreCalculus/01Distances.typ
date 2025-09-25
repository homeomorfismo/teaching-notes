#import "00Template.typ": *
#import "@preview/frame-it:1.2.0": *
#import "@preview/marge:0.1.0": sidenote

#show: main_format
#show: frame-style(styles.thmbox)

// Frame it config
#let (thm, todo, example, def) = frames(
  thm: ("Theorem", psu-forest-green),
  todo: ("TODO", psu-orange),
  example: ("Example", psu-sand),
  def: ("Definition", psu-red),
)
// #let todo = frame(kind: "", "TODO", psu-orange)

// marge config
#set page(margin: (right: 5cm))
#set par(justify: true)
#let sidenote = sidenote.with(numbering: "1", padding: 1em)

#date_header
#make_title

= Distances, equations of a circle, and Pythagorean theorem

We aim to introduce the basic notions
#sidenote[Here, basic strives to mean _elementary_. It is still not a trivial
task.]
required to build the essential of trigonometry.
This week we will learn that triangles, circles, and angles are deeply
connected.
If we are capable to grasps these concepts, bring them together will be easier
to handle.

== On distances

It seems a naive question, but it hides a quite profound complexity.
Today we are not going to address the _deep_ answer to this question due to
its surprising difficulty--more so, abstractness.
Despite the latter, we will employ a well-known result on which we rely.

We will start our discussion of circles with that famous Theorem about
right triangles, _the Pythagorean Theorem_.

#thm[Pythagorean Theorem][
  Given a right triangle, the sum of the squares of the legs of the
  said triangle must be equal to the square of the hypotenuse.
]

Many of the general know proofs rely on the concept of area: there are
different proofs involving the area of a triangle, of a square,
of a rectangle, even of a trapezoidal.
We will _briefly_ check some of them.

#todo[Classical proof of the Pythagorean Theorem using areas of squares.][]
#todo[Rescaling triangles.][]
#todo[James A. Garfield's proof.][]

== From Pythagoras to distances

Imagine yourself standing in Park Ave. with Market St., next to Lincoln Hall,
and your next class is _MTH 112_ in the FAB
(see #link("https://map.pdx.edu/")[the map]).
So you walk down thru Market St. until 4th Ave., turn right, and continue until
you arrive at Harrison St. with 4th Ave.
You may wonder what the total distance you traveled was.
If we count each block, you need to walk _four blocks east_,
then _three blocks south_.

Here is when _Pythagorean Theorem appears_: the path you walk corresponds to
the legs of a right triangle! We can compute the value of the hypotenuse. 

Notice that, given the displacement in the east-west direction and
the north-south direction, we are capable of computing the total distance
traveled.
We can generalize this in a more mathematical context
#sidenote[Usually, describing things mathematically can be _ugly_, but
synthetic, compact, and precise.].

#def[Distance in the plane][
  Given two points $(x_1, y_1)$ and $(x_2, y_2)$ in the plane $RR^2$, we define
  _the distance between $(x_1, y_1)$ and $(x_2, y_2)$_ as the lenght of the 
  hypotenuse of the right triangle formed by the horizontal and vertical
  displacements from $(x_1, y_1)$ to $(x_2, y_2)$.
  This distance is given by the formula
  $
  d((x_1, y_1), (x_2, y_2)) = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2).
  $
]

= Fixing distances: circles

Now we are concerned about how we should define a circle.
Before answering that question, try to distinguish the elements which fully
describe a circle
#sidenote[Do not say "a round thing"!].
For example, think of any tire, like a bike tire:
you _could_ choose any point as the center of rotation, but there is *one*
specific point on the wheel, where the mechanisim _will works better_.

#def[Circle][
  A _circle_ with center $(h, k)$ and radius $r > 0$ is the set of all points
  $(x, y)$ in the plane $RR^2$, such that their distance to the point
  $(h, k)$ is exactly $r$.
  In other words,
  $
  C = { (x, y) in RR^2 : d((x, y), (h, k)) = r }.
  $

  The point $(h, k)$ is called the _center_ of the circle,
  and $r$ is its _radius_.
  The points $(x, y)$ that belong to the circle verify the equation
  $
  (x - h)^2 + (y - k)^2 = r^2.
  $
]

= On the measurement of rotation: angles

We already know one way to do measurements--through distances and _the
Pythagorean theorem_.
We will study another way to orient ourselves in _the Cartesian plane_
#sidenote[
  The Cartesian plane is the name given to the two-dimensional space
  $RR^2 = {(x, y) : x, y in RR}$.
  It is named after René Descartes, who invented it.
],
based on rotations.

== Two (sun)rays meet at a point

A triangle means a polygon with three angles, so it is customary to know what
angle means.
Think of a _numberless analog clock_.
We should know how #sidenote[
  The analog clock is the one with two hands, one for the hour and another
  for the minutes.
  Do they still taught to read them in school?
]
to tell the hour right because we _comprehend_ how the minute hand and the
hour hand should be oriented.
We know _what angles_ (with respect to a reference axis) correspond to
_what time and value_.

#def[Angle][
  An angle is a space
  #sidenote[
    The word space here means a portion of the plane, not the outer space.
    Note that there are two initial choices _a priori_.
    We will fix this through _convention_.
  ]
  between two intersecting lines/rays
  #sidenote[
    A ray is a half-line, that is, a line with a starting point but no end.
  ]
  The measure of the angle is the measurement
  #sidenote[
    Or the asignation of a value.
  ]
  between two intersecting lines/rays, where we identify an
  _initial side_ and a _terminal side_.
  By convention, we measure the angle in a counterclockwise direction.
]

=== How to measure angles?


There is some class of ambiguity when measuring angles.
For avoiding problems, we define rules for doing these measurements.

First of all, when measuring angles on a circle, unless _otherwise directed_,
we measure angles in *standard position*: starting at the positive horizontal
axis and with counter-clockwise rotation.

#todo[Standard position of angles.][]

Second, we need to choose a measurement unit.
One way to do it is by defining the _degree_: a whole rotation to the (unit)
circle corresponds to $360 deg$ (degrees), so one degree is $1/360$ of a
circle.
Another way to do the above is by working with _radians_.
It is a more natural way of defining angles because it depends on the arc
length, i.e., the length of an arc (along a circle).
We compute the radian measure of an angle by considering the ratio between the
arc length and the radius: thus a complete rotation is $2 pi$ radians.

== Linear and angular velocity

When we try to describe a change in terms of time, we employ the notion of
velocity.
The idea is, if for some reason, our angular position is changing,
then we can describe its change by a ratio against time: the angular velocity.
Besides, we can describe the ratio between the arc length and the same time
employed: the linear velocity.
The radius of the rotation held relates the linear and the angular velocity.

#def[Angular and linear velocity][
  Given an object rotating around a circle of radius $r$,
  we define the _angular velocity_ $omega$ as the rate of change of the angle
  $theta$ with respect to time $t$:
  $
  omega = frac(Delta theta,Delta t)
  $
  We define the _linear velocity_ $v$ as the rate of change of the arc length
  $s$ with respect to time $t$:
  $
  v = frac(Delta s,Delta t)
  $
  The relation between both velocities is given by $v = r omega$, as the arc
  length is given by $s = r theta$.
]

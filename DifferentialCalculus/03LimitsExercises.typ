#import "00Template.typ": *
#show: main_format

#set page(columns: 2)

#place(
  top + center,
  scope: "parent",
  float: true,
  [
    #date_header
    #make_title
  ]
)

= Exercises

1. Find the following limits, if they exist. If a limit does not exist, explain why.

  a) $lim_(x->2) frac(x^2 - 4,x - 2)$


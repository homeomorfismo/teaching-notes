// Syllabus template for Portland State University courses

// Primary palette
#let psu-green = rgb(109, 141, 36)
#let psu-electric-green = rgb(198, 211, 0)
#let psu-forest-green = rgb(33, 57, 33)
#let psu-white = rgb(255, 255, 255)
#let psu-black = rgb(0, 0, 0)

// Secondary palette
#let psu-red = rgb(230, 73, 39)
#let psu-sand = rgb(232, 211, 162)
#let psu-blue = rgb(0, 138, 193)
#let psu-light-blue = rgb(165, 223, 249)
#let psu-stone = rgb(138, 138, 103)
#let psu-yellow = rgb(255, 194, 14)
#let psu-orange = rgb(246, 139, 31)
#let psu-purple = rgb(101, 3, 96)


#let main_format(doc) = [
  #set text(
    font: "Acumin Pro",
    size: 10pt,
    lang: "en",
    costs: (hyphenation: 150%),
  )
  #set page(margin: 1in)
  #set par(
    spacing: 1.0em,
    justify: true,
  )
  #doc
]

#let date_header = [
  #set align(right)
  #set text(
    font: "Acumin Pro",
    size: 6pt,
    lang: "en",
    costs: (hyphenation: 150%),
  )
  Last updated:
  #datetime.today().display("[weekday repr:long], [month repr:long] [Day], [Year]")
]

#let author = [
  #text(weight: "bold")[Gabriel Pinochet-Soto]
  | Email: #link("mailto:gpin2@pdx.edu")[gpin2\@pdx.edu] \
  // | Website: #link("https://web.pdx.edu/~gpin2/")[web.pdx.edu/\~gpin2]
  Office: FMH 464-G
  | Office hours: *MW* 16:00-17:00, or by arrangement
]
#let class = "MTH 251Z Differential Calculus"
#let term = "Fall 2025"

#let make_title = [
  #set align(center)
  #set text(
    font: "Acumin Pro",
    size: 18pt,
    lang: "en",
    costs: (hyphenation: 150%),
    fill: psu-forest-green,
  )
  #text(weight: "bold")[#class]
  #linebreak()
  #text(size: 14pt)[#term]
  #linebreak()
  #text(size: 10pt)[#author]
  #line(stroke: psu-green, length: 100%)
]

#let block = (title: none, body, color: psu-orange) => {
  rect(
    fill: color.lighten(90%),
    stroke: 1pt + color,
    radius: 5pt,
    width: 100%,
  )[
    #if title != none {
      rect(
        fill: color,
        width: 100%,
        radius: (top: 5pt)
      )[
        #set text(fill: white, weight: "bold")
        #h(0.5em)#title#h(0.5em)
      ]
      v(-0.3em)
    }
    #pad(0.5em)[#body]
  ]
}

// Math notation
#let dom = "dom"

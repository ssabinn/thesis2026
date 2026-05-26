#let front_cover(
  title: none,
  subtitle: none,
  authors: (),
  thesis_type: none,
  program_name: none,
  thesis_number: none,
) = {
  
  set page(numbering: none, margin: 2.5cm)
  
  align(center)[
    #image("umulogo.png", width: 25%)
  ]
  
  v(18%) // Large gap before the title
  
  align(center)[
    #set text(
      font: "Verdana",
      size: 22pt, 
      weight: "bold", 
      tracking: 0.1pt)
      #upper(title)
  ]
  
  v(1.5em)
  
  align(center)[
    #set text(
      font: "Verdana", 
      size: 18pt, 
      weight: "bold"
    )
    #subtitle
  ]
  
  v(2em)
  
  let author_string = authors.map(a => [#a.first-name #a.last-names]).join(", ")

  align(center)[
    #set text(font: "Georgia",size: 11pt)
    #author_string
  ]
  
  v(1fr) // Pushes the footer to the very bottom
  
  align(center)[
    #set text(font: "Verdana", size: 10pt, weight: "bold")
    Department of informatics \
    #set text(weight: "regular")
    #thesis_type \
    #program_name \
    SPM #thesis_number
  ]
  
  pagebreak()
  
  set page(numbering: "1")
  counter(page).update(1)
}
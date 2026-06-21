// Umeå University Thesis Template
// Based on Department of Informatics formatting requirements

#import "front_cover.typ": front_cover
//#import "appendix.typ": appendix
#import "../content/0. abstract.typ": abstract-content

#let umu-informatics-master-thesis(
  title: "Thesis Title",
  subtitle: none,
  authors: [],
  abstract: abstract-content,
  keywords: (),
  thesis_number: "XXX",
  thesis_type: "Master (or magister) thesis, 30 hp",
  program_name: "Name of masters program",
  body
) = {
  
  // ==================== TITLE =======================
  
  front_cover(
    title: title,
    subtitle: subtitle,
    authors: authors,
    thesis_number: thesis_number,
    thesis_type: thesis_type,
    program_name: program_name,
  )
  
 // ==================== PAGE SETUP ====================
  set page(
    paper: "a4",
    margin: 2.5cm,
    numbering: "1",
    number-align: center,
  )
  
  // ==================== TEXT SETUP ====================
  set text(
    font: "Georgia", 
    size: 11pt, 
    top-edge: 0.75em, 
    bottom-edge: -0.25em
  )
  
  // ==================== PARAGRAPH SETUP ====================
  let line_spacing = 16 
  let font_size = 11
  let leading = line_spacing - font_size
  
  set par(
    justify: true,
    leading: 4pt,
    spacing: 5pt,
    first-line-indent: 0.5cm
  )
  
  // ==================== HEADING STYLES ====================
  //set heading(numbering: "1.1")

  // set heading(numbering: "1.1")
  set heading(numbering: (..nums) => {
    let levels = nums.pos()
    if levels.len() == 1 {
      str(levels.first()) + "."
    } else {
      levels.map(str).join(".")
    }
  })
  
  let extra = 7   // visual leading to simulate; tune this one number
  let heading_spacing_1 = 5 + extra
  let heading_spacing_2 = 3 + extra
  let heading_spacing_3 = 0 + extra
  
  show heading.where(level: 1): it => {
    set text(size: 16pt, weight: "bold")
    set block(above: 24pt, below: heading_spacing_1 * 1pt)
    it
  }
  
  show heading.where(level: 2): it => {
    set text(size: 14pt, weight: "bold")
    set block(above: 12pt, below: heading_spacing_2 * 1pt)
    it
  }
  
  show heading.where(level: 3): it => {
    set text(size: 12pt, weight: "bold")
    set block(above: 12pt, below: heading_spacing_3 * 1pt)
    it
  }
  
  // ==================== FIGURE FORMATTING ====================
  show figure.caption: it => {
    set text(size: 11pt, style: "italic")
    set block(above: 12pt, below: 6pt)
    it
  }
  
  // Table captions above, figure captions below
  show figure.where(kind: table): set figure.caption(position: bottom)
  show figure.where(kind: image): set figure.caption(position: bottom)
  
  // No indent after figures
  show figure: it => {
    it
  }
  
  // ==================== FOOTNOTE FORMATTING ====================
  set footnote.entry(
    separator: line(length: 30%, stroke: 0.5pt),
    clearance: 0.5em,
    gap: 0.5em,
  )
  
  show footnote.entry: it => {
    set text(size: 10pt)
    set par(first-line-indent: 0pt) // single spacing = default leading
    it
  }
  
  // ==================== QUOTE FORMATTING ====================
  show quote.where(block: false): it => {
    ["] + h(0pt, weak: true) + it.body + h(0pt, weak: true) + ["]
    if it.attribution != none [ #it.attribution]
  }
  
  // Long quotes: italic, 1cm inside both margins, 15pt line spacing
  show quote.where(block: true): it => block(
    above: 1.2em,
    below: 1.2em,
  )[
    #pad(left: 1cm, right: 1cm)[
      #set par(leading: 4pt) // 15pt line spacing - 11pt line box = 4pt
      #text(style: "italic")[#it.body]
    ]
  ]

  // ==================== ABSTRACT ====================
  
  // if abstract != none [
    align(center)[
      #heading(outlined: false, numbering: none)[Abstract]
    ]
    
    par(first-line-indent: 0pt)[
      #text(style: "italic", font: "Georgia")[
        #abstract
      ]
    ]
    
    v(1em)
  
    if (keywords.len() != 0) [
      #par(first-line-indent: 0pt)[
        *Keywords:* #keywords.join(", ")
      ]
    ]
    
    v(2em)
    //pagebreak()
  // ]
  
  // ==================== MAIN BODY ====================
  body

  //appendix()
}

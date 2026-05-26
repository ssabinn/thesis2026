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
    font: "Noto Serif Georgian",
    size: 11pt,
  )
  
  // align("left")
  
  // ==================== PARAGRAPH SETUP ====================

  let line_spacing = 16 
  let font_size = 11
  let leading = line_spacing - font_size
  
  set par(
    justify: true,
    leading: 5pt, // 16pt total line spacing - 11pt font = 5pt leading
    first-line-indent: 0.5cm,
    
  )
  
  // ==================== HEADING STYLES ====================
  set heading(numbering: "1.1")

  let heading_spacing_1 = leading + 6
  let heading_spacing_2 = leading + 3
  let heading_spacing_3 = leading + 0
  
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
  show figure.where(kind: table): set figure.caption(position: top)
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
    set par(leading: 0pt, first-line-indent: 0pt) // Single spacing
    it
  }
  
  
  // ==================== ABSTRACT ====================
  
  // if abstract != none [
    align(left)[
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

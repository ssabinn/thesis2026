#import "formatting/template.typ": umu-informatics-master-thesis
#import "content/0. abstract.typ": abstract-content 

#show: umu-informatics-master-thesis.with(
  title: "In Control?",
  subtitle: "Exploring Human–AI Co-Performance in Exergame Rehabilitation",
  authors: (
    (first-name: "Sabin", last-names: "Bhandari"),
    (first-name: "Marwah", last-names: "Saleh"),
  ),
  abstract: abstract-content,
  keywords: ("Co-performance", "Agency", "Entanglement HCI", "AI-Supported Systems", "Exergames", "Rehabilitation", ),
  thesis_number: "2026.05",
  thesis_type: "Master Thesis, 30 hp",
  program_name: "Human-Computer Interaction and User Experience",
)

//external collaboration 

#include "content/2. introduction.typ"
#include "content/3. background.typ"
#include "content/4. method.typ"
#include "content/5. results.typ"
#include "content/6. discussion.typ"
#include "content/7. limitations.typ"
#include "content/9. conclusions.typ"


#pagebreak()

//#include "formatting/appendix.typ"
//#bibliography("references.yaml", style: "harvard-cite-them-right")



#bibliography("works.bib", style: "apa", title: "References")



// ======= APPENDIX (add more here) =======
#let setup-appendices(body) = {
  set heading(numbering: "A.1.")
  counter(heading).update(0)
  show heading.where(level: 1): set heading(supplement: "Appendix")

  pagebreak()
  body
}
#show: setup-appendices // uncomment if appendix is used

#include "content/Appendix.typ"
// #include "appendix/testappe.typ"
// #include "appendix/testappe.typ"


// === student == //

#let studentcont(body) = {
  set heading(numbering: none)
  counter(heading).update(0)
  show heading.where(level: 1): set heading(supplement: "Students")

  pagebreak()
  body
}
#show: studentcont

#include "content/StudentContribution.typ"
#import "formatting/template.typ": umu-informatics-master-thesis
#import "content/0. abstract.typ": abstract-content 

#show: umu-informatics-master-thesis.with(
  title: "Agency of control",
  subtitle: "Agency Distribution Across Therapeutic Process in Exergame-based Rehabilitation",
  authors: (
    (first-name: "Sabin", last-names: "Bhandari"),
    (first-name: "Marwah", last-names: "Saleh"),
  ),
  abstract: abstract-content,
  keywords: ("More-Than-Human Design", "Therapist Interface", "Adaptive Systems", "Exergames", "Rehabilitation"),
  thesis_number: "2026.XX",
  thesis_type: "Master thesis, 30 hp",
  program_name: "Human-Computer Interaction and UX",
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

// #include "formatting/appendix.typ"
#bibliography("references.yaml", style: "harvard-cite-them-right")

//#pagebreak()
//#include "content/Appendix.typ"
#let acronyms = (
  (key: "hci", short: "HCI", long: "Human-Computer Interaction"),
  (key: "pm", short: "PM", long: "Product Manager"),
  (key: "md", short: "MD", long: "Managing Director"),
  (key: "ot", short: "OT", long: "Occupational Therapist"),
  (key: "pt", short: "PT", long: "Physiotherapist"),
 
)

= Acronyms

#table(
  columns: (auto, 1fr),
  align: left,
  [*Acronym*], [*Full Form*],
  ..acronyms.map(a => ([#a.short], [#a.long])).flatten(),
)

//not needed
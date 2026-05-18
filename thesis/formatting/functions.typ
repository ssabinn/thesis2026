
// Block quote function for quotes longer than 3 lines
#let block-quote(content) = {
  pad(left: 1cm, right: 1cm)[
    #set par(leading: 4pt) // 15pt total line spacing
    #text(style: "italic")[#content]
  ]
}
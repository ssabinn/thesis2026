
#let appendix() = {
  
  // ==================== REFERENCES ====================
  pagebreak()
  
  
  bibliography("../works.bib", style: "apa")
  
  
  // ==================== APPENDICES ====================
  pagebreak()
  
  // #set page(header: align(right)[Appendix 1: Example appendix])
  
  heading(outlined: false, numbering: none)[Appendix 1: Example appendix]

}

#let appendix() = {
  
  // ==================== REFERENCES ====================
  pagebreak()
  
  
  //bibliography("../references.yaml", str: "apa")
  bibliography("../references.yaml", style: "apa")
  
  
  // ==================== APPENDICES ====================
  pagebreak()
  
  set page(header: align(right)[Appendix 1: Example appendix])
  
  heading(outlined: false, numbering: none)[Appendix 1: Example appendix]

}

server <- function(input, output) {
  dna_seq <- reactive({
    gene_dna(length = input$n_bases,
             base_probs = c(input$prob_A, input$prob_T, input$prob_C, input$prob_G))
  })
  
  output$dna <- renderText({
    dna_seq()
  })
  
  output$rna <- renderText({
    transcribe_dna(dna_seq())
  })
}
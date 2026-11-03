server <- function(input, output) {
  output$dna <- renderText({
    gene_dna(length = input$n_bases,
             base_probs = c(input$prob_A, input$prob_T, input$prob_G, input$prob_C))
  })
}
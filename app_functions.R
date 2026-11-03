gene_dna <- function(length, base_probs = c(0.25, 0.25, 0.25, 0.25)){
  if( sum(base_probs) > 1){
    stop("The probabilities of all bases should sum to 1")
  }
  if( length %% 3 != 0 ){
    stop("The argument to the parameter 'l' has to be divisible by 3")
  }
  dna_vector <- sample(
    x = c("A", "T", "C", "G"),
    size = length,
    replace = TRUE,
    prob = base_probs)
  dna_string <- paste0(
    x = dna_vector,
    collapse = "")
  return(dna_string)
}
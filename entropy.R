entropy <- function(x) {
  # Calculate the probability of each value
  p <- table(x) / length(x)
   
  # Calculate the entropy
  entropy_value <- -sum(p * log2(p))
   
  return(entropy_value)
}

# Example usage:
data <- c("good", "bad", "good", "bad", "good", "good", "bad", "bad")
entropy(data)

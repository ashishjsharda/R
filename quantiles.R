# random data
data <- rnorm(100)

# Compute quantiles
quantiles <- quantile(data, probs = c(0.25, 0.5, 0.75))

print(quantiles)

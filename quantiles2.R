# vector of data
data <- c(10, 15, 20, 25, 30, 35, 40, 45, 50)

# Calculate the 25th, 50th, and 75th percentiles (quantiles)
quantiles <- quantile(data, probs = c(0.25, 0.5, 0.75))
print(quantiles)

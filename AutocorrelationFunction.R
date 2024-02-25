library(stats)

set.seed(123)
time_series <- ts(rnorm(100), start = 1)

# Compute autocorrelation function
acf_result <- acf(time_series)

# Plot autocorrelation function
plot(acf_result, main = "Autocorrelation Function", xlab = "Lag", ylab = "ACF")

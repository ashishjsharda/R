library(ggplot2)

# Generate a non-stationary time series
set.seed(123)
time <- 1:100
trend <- 0.1 * time  # Linear trend
seasonality <- sin(2 * pi * time / 12)  # Seasonal component
noise <- rnorm(100, mean = 0, sd = 1)  # Random noise
non_stationary_series <- trend + seasonality + noise

# Plot the non-stationary time series
ggplot() +
  geom_line(aes(x = time, y = non_stationary_series), color = "red") +
  labs(x = "Time", y = "Value", title = "Non-Stationary Time Series Example") +
  theme_minimal()

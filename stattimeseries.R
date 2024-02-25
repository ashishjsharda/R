library(ggplot2)

set.seed(123)
time_series <- ts(rnorm(100), start = 1)

# Plot the time series
ggplot() +
  geom_line(aes(x = 1:length(time_series), y = time_series), color = "blue") +
  labs(x = "Time", y = "Value", title = "Stationary Time Series Example") +
  theme_minimal()

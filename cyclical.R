# Load required libraries
library(ggplot2)
library(dplyr)

# Simulate data with a cyclical pattern
set.seed(123)
time <- seq(1, 100, by = 1)
cyclical_data <- data.frame(
  Time = time,
  Value = sin(2 * pi * time / 12) + 0.5 * cos(2 * pi * time / 6) + rnorm(100, mean = 0, sd = 0.2)
)

# Plot the cyclical chart
ggplot(cyclical_data, aes(x = Time, y = Value)) +
  geom_line(color = "blue") +
  labs(x = "Time", y = "Value", title = "Cyclical Chart Example") +
  theme_minimal()

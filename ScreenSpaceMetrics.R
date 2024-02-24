# Load the required libraries
library(ggplot2)
library(plotly)

# Create sample data
data <- data.frame(
  X = rnorm(100, mean = 0, sd = 1),
  Y = rnorm(100, mean = 0, sd = 1)
)

# Create a scatter plot using ggplot
gg <- ggplot(data, aes(x = X, y = Y)) +
  geom_point() +
  theme_minimal()

# Convert ggplot to plotly for interactive features
p <- ggplotly(gg)

# Extract the data from the plotly object
plotly_data <- p$x$data[[1]]

# Calculate distances between points
distances <- sqrt((plotly_data$x - plotly_data$x[1])^2 + (plotly_data$y - plotly_data$y[1])^2)

# Print the distances
print(distances)

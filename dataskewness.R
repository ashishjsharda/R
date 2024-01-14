library(ggplot2)

# Example data 
data <- c(rnorm(100, mean = 50, sd = 10), runif(50, min = 30, max = 60))

# Data Visualization
ggplot(data.frame(value = data), aes(x = value)) +
  geom_histogram(bins = 30, fill = 'blue', alpha = 0.7) +
  labs(title = "Original Data Distribution")

# Check for skewness
skewness_original <- skewness(data)
print(paste("Skewness of original data: ", skewness_original))

data_transformed <- log(data - min(data) + 1)

# Visualization of Transformed Data
ggplot(data.frame(value = data_transformed), aes(x = value)) +
  geom_histogram(bins = 30, fill = 'green', alpha = 0.7) +
  labs(title = "Transformed Data Distribution")


t_test_result <- t.test(data_transformed, mu = 3)
print(t_test_result)

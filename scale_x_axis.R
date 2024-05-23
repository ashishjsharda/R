library(ggplot2)
data <- data.frame(
  x = rnorm(100, mean = 5, sd = 2),
  y = rnorm(100, mean = 10, sd = 3)
)
ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  scale_x_continuous(
    limits = c(0, 10),  # Set x-axis limits
    breaks = seq(0, 10, by = 2),  # Set tick mark positions
    labels = c("0", "Two", "4", "Six", "8", "Ten")  # Customize tick labels
  )

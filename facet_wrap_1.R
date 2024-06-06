library(ggplot2)

set.seed(123) 
x <- rnorm(200, mean = 50, sd = 15)
y <- 2 * x + rnorm(200, mean = 20, sd = 10)
group <- sample(c("A", "B", "C"), 200, replace = TRUE)


df <- data.frame(x = x, y = y, group = group)

p <- ggplot(df, aes(x = x, y = y, color = group)) +
  geom_point()

# Apply facet_wrap to create a vertical ribbon of plots
p + facet_wrap(~group, dir = "v", nrow = 1)

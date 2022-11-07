library(ggplot2)
ggplot(cars, aes(speed, dist)) + geom_point() +
  labs(title = "dist vs. speed",
       subtitle = "cars dataset",
       y = "distance")

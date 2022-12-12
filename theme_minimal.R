library(ggplot2)
ggplot(diamonds, aes(carat, price, col = cut)) + geom_point(alpha = 0.4) + theme_minimal()

library(ggplot2)
ggplot(mtcars, aes(wt, mpg)) + geom_jitter(width = 0.1)

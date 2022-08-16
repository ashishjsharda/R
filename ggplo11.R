library(ggplot2)
ggplot(cars, aes(speed, dist)) + geom_point()
mtcars_ggplot <- ggplot(mtcars, aes(wt, mpg))
#create 2 additional plots:
mtcars_ggplot + geom_point()
mtcars_ggplot + geom_point(aes(col = factor(cyl)))

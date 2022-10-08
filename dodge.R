library(ggplot2)
mtcars$cylfactor <- as.factor(mtcars$cyl)
mtcars$gearfactor <- as.factor(mtcars$gear)
ggplot(mtcars, aes(cyl, fill = gearfactor)) + geom_bar(position = "dodge")

library(ggplot2)
ggplot(mtcars, aes(cyl, fill = as.factor(gear))) + geom_bar()

       

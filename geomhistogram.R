library(ggplot2)
ggplot(mtcars,aes(cyl))+geom_histogram(stat = "count")

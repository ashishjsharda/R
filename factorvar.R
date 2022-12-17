library(datasets)
data("mtcars")
str(mtcars)
mtcars$mpg<-as.factor(mtcars$mpg)

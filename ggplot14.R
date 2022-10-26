library(ggplot2)
cyl_factor<-factor(mtcars$cyl)
ggplot(mtcars,aes(wt,mpg,fill=cyl_factor))+geom_point()

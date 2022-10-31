library(ggplot2)
#control transparency using alpha
ggplot(mtcars,aes(wt,mpg))+geom_point(shape=17,size=3,alpha=0.6)

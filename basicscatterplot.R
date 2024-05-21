library(ggplot2)
data<-data.frame(x=rnorm(100) ,y=rnorm(200))
ggplot(data,aes(x=x,y=y)) +geom_point() +labs(title = "My Scatter Plot")

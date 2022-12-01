library(ggplot2)
ggplot(cars,aes(speed,dist))+geom_point()+ggtitle("dist vs speed",subtitle = "cars dataset" )+ylab("distance")

require(ggvis)
data(cocaine)
head(cocaine)
summary(cocaine)
require(ggplot2)
ggplot(cocaine,aes(x=weight,y=price))+geom_point()

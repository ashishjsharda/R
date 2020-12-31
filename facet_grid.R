require(ggplot2)
head(diamonds)
summary(diamonds)
ggplot(diamonds,aes(x=carat,y=price))+geom_point(aes(color=color))+facet_grid(cut~clarity)

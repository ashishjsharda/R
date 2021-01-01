require(ggplot2)
head(diamonds)
summary(diamonds)
ggplot(diamonds,aes(x=carat))+geom_histogram()+facet_wrap(~color)

require(ggplot2)
ggplot(diamonds,aes(x=carat,y=price,color=color,shape=cut,size=depth))+geom_point()

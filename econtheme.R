require(ggplot2)
require(ggthemes)
g<-ggplot(diamonds,aes(x=carat,y=price,color=color,shape=cut,size=depth))+geom_point()
g+theme_economist()+scale_color_economist()

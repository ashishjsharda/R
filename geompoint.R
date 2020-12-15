require(ggplot2)
g<-ggplot(diamonds,aes(x=cut,y=carat))
g+geom_point()+geom_violin()

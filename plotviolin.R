require(ggplot2)
g<-ggplot(diamonds,aes(y=carat,x=cut))
g+geom_point()+geom_violin()

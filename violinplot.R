require(ggplot2)
ggplot(diamonds,aes(y=carat,x=cut))+geom_violin()

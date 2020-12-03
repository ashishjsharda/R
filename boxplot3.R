require(ggplot2)
ggplot(data=diamonds,aes(y=carat,x=1))+geom_boxplot()

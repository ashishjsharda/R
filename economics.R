require(ggplot2)
head(economics)
ggplot(economics,aes(x=date,y=pop))+geom_line()

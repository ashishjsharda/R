require(ggplot2)
ggplot(data = diamonds) + geom_density(aes(x=carat),fill="grey50")

require(ggplot2)
ggplot(data=diamonds) +geom_histogram(aes(x=carat))

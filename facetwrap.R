library(ggplot2)
ggplot(msleep, aes(conservation)) + geom_bar() + facet_wrap(~vore)

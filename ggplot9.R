library(ggplot2)
ggplot(msleep,aes(vore))+geom_bar()+geom_histogram(stat = "count")

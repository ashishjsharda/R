data(diamonds,package="ggplot2")
head(diamonds)
aggregate(diamonds$price,by=list(diamonds$cut),mean)

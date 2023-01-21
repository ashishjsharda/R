library(ggplot2)
data("midwest")
str(midwest)

#split the data and then combine the data
midwest1 <- midwest[1:round(nrow(midwest)/2),] 
midwest2 <- midwest[(round(nrow(midwest)/2)+1):nrow(midwest),]
midwest_back <- rbind(midwest1, midwest2)

data=read.csv("met.csv")
summary(data)
dim(data)
nrow(data)
head(data[,1:4])
data[which(data$NAME=='Carson City, NV'),c('NAME','LSAD')]

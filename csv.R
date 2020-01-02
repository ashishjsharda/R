data<-read.csv("acme.csv")
print(nrow(data))
print(ncol(data))
#Print max market value
print(max(data$market))
#Print subset of a data
retval<-subset(data,market==max(market))
print(retval)

require(plyr)
head(baseball)
summary(baseball)
baseball$sf[baseball$year<1954]<-0
#Check if any of them are NA
any(is.na(baseball$sf))

rainfall<-c(20,30,40,50,60,75,85,96,101,118,128,138)
#Convert to timeseries object
rainfall.ts<-ts(rainfall,start=c(2018,1),frequency = 12)
print(rainfall.ts)
png(file="rainfall.png")
plot(rainfall.ts)
dev.off()

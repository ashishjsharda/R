rainfall<-c(10,20,30,40,50)
rainfall.ts<-ts(rainfall,start = c(2018,1),frequency = 12)
print(rainfall.ts)

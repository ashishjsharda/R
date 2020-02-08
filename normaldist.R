#Create the sequence of numbers
x<-seq(-10,10,by=0.2)
y<-dnorm(x,mean = 2.5,sd=0.5)
print(y)
png(file="dnorm.png")
plot(x,y)
dev.off()

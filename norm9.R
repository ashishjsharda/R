x<-seq(-10,10,by=0.1)
y<-dnorm(x,mean = 2,sd=1,log = FALSE)
png(filename = "norm.png")
plot(x,y)
dev.off()

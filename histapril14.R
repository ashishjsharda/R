data<-c(10,20,30,40)
png(file="histogram.png")
hist(data,xlab = "Weight",ylab = "Range",col = "orange",border = "blue")
dev.off()

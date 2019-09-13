#Using Pie Charts in R
x1<-c(1,2,3,4,5)
labels<-c("A","B","C","D",'E')
png(file="pie.png")
pie(x1,labels)
dev.off()

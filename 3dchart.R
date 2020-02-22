#3d chart
library(plotrix)
x<-c(10,20,30,40)
label<-c("London","Paris","Mumbai","New York")
png(file="3d_chart.jpg")
pie(x,labels=label,explode=0.1,main = "Pie chart of countries")
dev.off()

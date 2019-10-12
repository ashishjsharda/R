input<-mtcars[,c('mpg','cyl')]
print(head(input))
png(file="boxes.png")
boxplot(mpg~cyl,data=mtcars)
dev.off()

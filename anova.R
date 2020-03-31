print(head(mtcars))
input<-mtcars[,c("mpg","cyl","am","hp")]
print(head(input))
print(summary(input))
#Create the regression model
result<-aov(formula = mpg~hp*am,data =input,projections = TRUE )
result2<-aov(formula = mpg~hp+am,data =input,projections = TRUE )
out<-anova(result,result2)
print(result)
print(out)

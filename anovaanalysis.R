input<-mtcars
result<-aov(mpg~hp*am,data = input)
print(summary(result))
result2<-aov(mpg~hp*am,data = input)
print(anova(result,result2))

input<-mtcars
print(head(input))
#Analysis of Covariance
output<-aov(mpg~hp*am,data = input)
print(output)

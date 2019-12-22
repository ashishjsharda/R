#Linear Regression Using R
y<-c(1,2,3,4,5,6)
x<-c(1,2,3)
#lm(formula ~data)
relation <- lm(x~y)
print(relation)

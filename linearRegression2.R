x<-c(1,2,3,4,5) #independent variables
y<-c(1,2,3,4,5) #dependent variables
regression<-lm(y~x) #Print Regression
summary(regression) #Print Summary
confint(regression) #Print confidence intervals

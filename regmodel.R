input<-mtcars[,c["mpg,cyl,hp,wt"]]
print(input)
am.data=glm(formula=mpg~cyl+hp+wt,data=input,family = binomial)
print(summary(am.data))

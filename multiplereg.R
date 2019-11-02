input<-mtcars[,c("mpg","disp","hp","wt")]
print(head(input))
inputs<-mtcars
print(head(inputs))
rel=lm(mpg~disp+hp+wt,data=input)
print(rel)

#Using Poisson Distribution 
#DataSet used is warpbreaks
output<-glm(formula = breaks~wool+tension,data = warpbreaks,family = poisson)
print(output)

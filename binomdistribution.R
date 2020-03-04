#Binomial Distribution
x<-rbinom(8,150,0.4)
print(x)
prob<-qbinom(0.25,51,1/2)
print(prob)
cumprob<-pbinom(26,51,0.5)
print(cumprob)

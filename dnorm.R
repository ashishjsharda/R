#Create the sequence of numbers
X<-seq(-10,10,by=0.1)
#Using pnorm
Y<-pnorm(X,mean = 2.5,sd=0.6)
print(Y)

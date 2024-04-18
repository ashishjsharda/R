library(class)
#sample dataset
set.seed(123)
x<-data.frame(x1=rnorm(20),x2=rnorm(20))
y<-c(rep("A",10),rep("B",20))

#split into training and testing sets
train_indices <-sample(1:nrow(x),0.7*nrow(x))
train_data <-x[train_indices,]
train_labels <-y[train_indices]
test_data <- x[-train_indices,]
test_labels <-y[-train_indices]

k<-3
predicted_labels <-knn(train_data,test_data,train_labels,k=k)

print(predicted_labels)

#evaluate the accuracy of the model

accuracy <-sum(predicted_labels == test_labels) /length(test_labels)
print(paste("Accuracy" ,accuracy))

# Load the dataset
data(mtcars)

# Convert the "am" variable to a factor
mtcars$am <- as.factor(mtcars$am)

# Split the dataset into training and testing sets
set.seed(123)
train_indices <- sample(nrow(mtcars), nrow(mtcars) * 0.7)
train_data <- mtcars[train_indices, ]
test_data <- mtcars[-train_indices, ]

# Perform logistic regression
model <- glm(am ~ mpg + hp, data = train_data, family = binomial)

# Make predictions on the test set
predictions <- predict(model, newdata = test_data, type = "response")
predicted_classes <- ifelse(predictions > 0.5, 1, 0)

# Evaluate the model
actual_classes <- test_data$am
accuracy <- mean(predicted_classes == actual_classes)
print(paste("Accuracy:", accuracy))

# some example data
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)

# linear regression using least squares
fit <- lm(y ~ x)

# Print the summary of the regression model
summary(fit)

# Plot the data and the regression line
plot(x, y, main="Linear Regression with Least Squares", xlab="x", ylab="y")
abline(fit, col="red")

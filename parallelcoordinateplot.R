library(MASS)

# numeric data
a = rnorm(100,  10,  10)
b = rnorm(100,  10,  5)
c = rnorm(100,  5,  10)

# Generate a factor variable
group <- sample(LETTERS[1:4],  100, replace=TRUE, prob=c(0.25,  0.25,  0.25,  0.25))

# Convert factor to numeric by assigning levels
group_numeric <- as.numeric(factor(group))

# Combine numeric data and converted factor
d <- cbind(a, b, c, group_numeric)

# Plot parallel coordinates
parcoord(d[, c(1,  2,  3,  4)], col =  1 + (0:99) %/%  50)

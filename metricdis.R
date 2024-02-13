# Install and load the 'proxy' package
install.packages("proxy")
library(proxy)

# Create two vectors
x <- c(1, 2, 3)
y <- c(4, 5, 6)

# Calculate the Euclidean distance between the two vectors
euclidean_distance <- proxy::dist(x, y, method = "Euclidean")

print(euclidean_distance)

# Define two points
point1 <- c(1, 2)
point2 <- c(4, 6)

# Create a matrix with the points as rows
points_matrix <- rbind(point1, point2)

# Calculate Euclidean distance 
euclidean_dist <- dist(points_matrix)
print(euclidean_dist)

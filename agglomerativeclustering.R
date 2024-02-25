set.seed(123)
x <- matrix(rnorm(50), ncol = 2)

# Perform hierarchical clustering 
hc <- hclust(dist(x), method = "complete")

# Plot the dendrogram
plot(hc)

# Cut the dendrogram to get clusters
clusters <- cutree(hc, k = 3)

# Plot the data with different colors for each cluster
plot(x, col = clusters, pch = 19)

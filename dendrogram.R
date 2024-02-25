set.seed(123)
x <- matrix(rnorm(50), ncol = 2)

# Perform hierarchical clustering using complete linkage
hc <- hclust(dist(x), method = "complete")

# Plot the dendrogram
plot(hc)

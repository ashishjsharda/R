library(treemap)

# sample data frame
data <- data.frame(
  category = c("A", "B", "C", "D", "E"),
  value = c(10, 20, 15, 25, 30)
)

# Create a treemap
treemap(data,
        index = "category",
        vSize = "value",
        title = "Example Treemap",
        fontsize.labels = 12,
        palette = "RdYlBu",
        border.col = "black"
)

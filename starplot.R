library(fmsb)
data <- data.frame(
  Category = c("A", "B", "C", "D", "E"),
  Value1 = c(4, 3, 2, 5, 4),
  Value2 = c(3, 4, 3, 2, 5),
  Value3 = c(2, 5, 4, 3, 3)
)

data_scaled <- data[, -1] / apply(data[, -1], 2, max)

rownames(data_scaled) <- data$Category

# Create a star plot
radarchart(data_scaled, 
           axistype = 1, 
           title = "Star Plot Example", 
           vlabels = c("Value1", "Value2", "Value3"),
           pcol = c("blue", "green", "red"), 
           plwd = 2, 
           cglcol = "grey", 
           cglty = 1)

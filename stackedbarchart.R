# Load the ggplot2 package
library(ggplot2)

data <- data.frame(
  category = c("A", "B", "C", "D"),
  group1 = c(20, 30, 25, 15),
  group2 = c(10, 25, 20, 30)
)

# Melt the data to long format
library(reshape2)
data_melted <- melt(data, id.vars = "category")

# Plot the stacked bar chart
ggplot(data_melted, aes(x = category, y = value, fill = variable)) +
  geom_bar(stat = "identity") +
  labs(title = "Stacked Bar Chart Example",
       x = "Category",
       y = "Value",
       fill = "Group") +
  theme_minimal()

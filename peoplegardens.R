library(ggplot2)

people_data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Emma"),
  Age = c(25, 30, 35, 40, 45),
  Height = c(160, 175, 170, 165, 180),
  GreenThumb = c(TRUE, FALSE, TRUE, TRUE, FALSE)
)

# Plot people gardens
ggplot(people_data, aes(x = Age, y = Height, label = Name)) +
  geom_point(aes(color = GreenThumb), size = 5, shape = 15) +
  geom_text(size = 3, vjust = -0.5) +
  scale_color_manual(values = c("green", "red"), labels = c("Green Thumb", "No Green Thumb")) +
  labs(x = "Age", y = "Height", title = "People Gardens") +
  theme_minimal()

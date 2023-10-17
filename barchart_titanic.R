library(ggplot2)
data("Titanic")
# Convert the 'Titanic' table to a data frame for easier manipulation
titanic_df <- as.data.frame(Titanic)

# Create a bar chart
ggplot(titanic_df, aes(x = Class, y = Freq, fill = Age)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Passenger Class Distribution on the Titanic",
    x = "Class",
    y = "Number of Passengers",
    fill = "Age Group"
  ) +
  theme_minimal()

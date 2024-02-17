library(ggplot2)
library(dplyr)
library(lubridate)

# Sample data 
set.seed(123)
start_date <- as.Date("2023-01-01")
end_date <- as.Date("2023-12-31")
date_seq <- seq(start_date, end_date, by = "day")
data <- data.frame(
  date = date_seq,
  value = sample(1:100, length(date_seq), replace = TRUE)
)

# Extract month and day
data <- data %>%
  mutate(month = month(date),
         day = day(date))

# Create calendar heatmap
ggplot(data, aes(x = month, y = day, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "Calendar Heatmap",
       x = "Month",
       y = "Day",
       fill = "Value") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1))

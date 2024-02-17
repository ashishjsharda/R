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

# Function to create spiral coordinates
create_spiral <- function(num_points) {
  angle <- (3 * sqrt(1:num_points) + 45) * (pi / 180)
  radius <- sqrt(1:num_points)
  x <- radius * cos(angle)
  y <- radius * sin(angle)
  return(data.frame(x = x, y = y))
}

# Create spiral coordinates
spiral_coords <- create_spiral(nrow(data))

# Plot spiral calendar
ggplot() +
  geom_point(data = spiral_coords, aes(x = x, y = y, color = data$value), size = 3) +
  scale_color_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "Spiral Calendar",
       x = "", y = "") +
  theme_void()

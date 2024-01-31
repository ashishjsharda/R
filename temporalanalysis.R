library(ggplot2)
library(lubridate)

set.seed(123)
dates <- seq(from = ymd("2022-01-01"), by = "days", length.out = 365)
values <- rnorm(365, mean = 50, sd = 10)
ts_data <- data.frame(Date = dates, Value = values)

# line plot
ggplot(data = ts_data, aes(x = Date, y = Value)) +
  geom_line() +
  labs(title = "Sample Time Series Data",
       x = "Date",
       y = "Value")

# Load necessary libraries
library(quantmod)

# Define the stock symbol and time period
stock_symbol <- "AAPL"
start_date <- Sys.Date() - 365
end_date <- Sys.Date()

# Download stock data
getSymbols(stock_symbol, from = start_date, to = end_date)

# Extract adjusted closing prices
stock_data <- Ad(get(stock_symbol))

# Create lagged variables for prediction
stock_data_lagged <- data.frame(
  Close = stock_data,
  Lag.1 = Lag(stock_data, 1),
  Lag.2 = Lag(stock_data, 2),
  Lag.3 = Lag(stock_data, 3)
)

# Remove rows with NA values
stock_data_lagged <- na.omit(stock_data_lagged)

# Split data into training and testing sets
train_size <- 0.8
train_index <- floor(train_size * nrow(stock_data_lagged))

train_data <- stock_data_lagged[1:train_index, ]
test_data <- stock_data_lagged[(train_index + 1):nrow(stock_data_lagged), ]

# Create linear regression model
model <- lm(AAPL.Adjusted ~ Lag.1 + Lag.2 + Lag.3, data = train_data)

# Make predictions
predictions <- predict(model, newdata = test_data)

# Calculate RMSE
rmse <- sqrt(mean((test_data$Close - predictions)^2))
cat("Root Mean Squared Error (RMSE): ", rmse, "\n")

# Check for missing or infinite values
any_missing <- any(is.na(test_data$AAPL.Adjusted))
any_infinite <- any(!is.finite(test_data$AAPL.Adjusted))

# If missing or infinite values are found, handle them
if (any_missing || any_infinite) {
  # Remove missing or infinite values
  test_data_clean <- test_data[complete.cases(test_data), ]
  
  # Plot using cleaned data
  plot(test_data_clean$AAPL.Adjusted, type = "l", col = "blue", ylim = range(c(test_data_clean$AAPL.Adjusted, predictions)),
       main = "Actual vs Predicted Stock Prices", xlab = "Date", ylab = "Price")
} else {
  # Plot using original data
  plot(test_data$AAPL.Adjusted, type = "l", col = "blue", ylim = range(c(test_data$AAPL.Adjusted, predictions)),
       main = "Actual vs Predicted Stock Prices", xlab = "Date", ylab = "Price")
}

# Add predicted values to the plot
lines(predictions, col = "red")

# Add legend
legend("topright", legend = c("Actual", "Predicted"), col = c("blue", "red"), lty = 1)

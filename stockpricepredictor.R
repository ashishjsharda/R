# Install and load required packages
install.packages(c("forecast", "quantmod", "xts"))
library(forecast)
library(quantmod)
library(xts)

# Download Apple stock data
getSymbols("AAPL", src = "yahoo", from = "2010-01-01", to = Sys.Date())
apple_data <- Cl(AAPL)

# Fit ARIMA model
fit <- auto.arima(apple_data)

# Forecast next 20 days
forecasted_prices <- forecast(fit, h = 20)

# Convert the forecasted dates to actual dates
forecasted_dates <- seq(as.Date(index(apple_data)[length(apple_data)]), by = "days", length.out = 20)

# Create a combined time series for plotting
combined_data <- c(apple_data, xts(forecasted_prices$mean, order.by = forecasted_dates))

# Plot the results
plot(combined_data, main = "Apple Inc. Stock Price Prediction",
     xlab = "Date", ylab = "Closing Price", col = "black")
lines(forecasted_dates, forecasted_prices$mean, col = "blue")
lines(forecasted_dates, forecasted_prices$upper[,2], col = "light blue")
lines(forecasted_dates, forecasted_prices$lower[,2], col = "light blue")
legend("topleft", legend = c("Actual", "Forecast", "95% CI"),
       col = c("black", "blue", "light blue"), lty = 1, cex = 0.8)

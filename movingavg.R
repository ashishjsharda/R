set.seed(123)
data <- rnorm(100, mean = 10, sd = 2)

# Compute moving average
window_size <- 5
moving_avg <- stats::filter(data, rep(1/window_size, window_size), sides = 2)

# Plot 
plot(data, type = "l", col = "blue", xlab = "Index", ylab = "Value", ylim = c(min(data[is.finite(data)], moving_avg[is.finite(moving_avg)]), max(data[is.finite(data)], moving_avg[is.finite(moving_avg)])))
lines(moving_avg, col = "red")
legend("topright", legend = c("Original", "Moving Average"), col = c("blue", "red"), lty = 1)

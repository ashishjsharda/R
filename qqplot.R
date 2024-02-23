set.seed(123)
data <- rnorm(100)

# Create QQ plot
qqnorm(data)
qqline(data)

library(ggplot2)
set.seed(123)
data <- rnorm(100)

quantiles <- quantile(data, probs = c(0.25, 0.5, 0.75))
density_plot <- ggplot(data.frame(x = data), aes(x = x)) +
  geom_density(fill = "skyblue", color = "black") +
  labs(x = "Value", y = "Density", title = "Density Plot with Quantiles") +
  theme_minimal()

# Add quantiles as vertical lines to the density plot
density_plot +
  geom_vline(xintercept = quantiles, linetype = "dashed", color = "red") +
  geom_text(data = data.frame(quantiles = quantiles, label = paste0("Q", c(1, 2, 3))),
            aes(x = quantiles, label = label), y = 0.02, color = "red", vjust = -0.5)

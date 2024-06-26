library(ggplot2)
library(scales)

CPS85 <- data.frame(
  exper = sample(0:60, 100, replace = TRUE), # Example data for experience
  wage = runif(100, min = 0, max = 30), # Example data for wages
  sex = factor(sample(c("Male", "Female"), 100, replace = TRUE)) # Example data for sex
)

# Plot
ggplot(data = CPS85,
       mapping = aes(x = exper, y = wage, 
                     color = sex, shape=sex, linetype=sex)) +
  geom_point(alpha =.7, size = 3) +
  geom_smooth(method = "lm", se = FALSE, size = 1.5) +
  scale_x_continuous(breaks = seq(0, 60, 10)) +
  scale_y_continuous(breaks = seq(0, 30, 5),
                     label = dollar) + # Using dollar function from scales package for currency formatting
  scale_color_manual(values = c("Male" = "indianred3", "Female" = "cornflowerblue")) + # Adjusted for clarity
  theme_bw()

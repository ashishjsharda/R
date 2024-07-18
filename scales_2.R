# Load necessary libraries
update.packages("ggplot2")

library(ggplot2)
library(scales)

# Load the mtcars dataset
data(mtcars)

# Create the plot
ggplot(data = mtcars,
       aes(x = hp, y = mpg, 
           color = factor(cyl), shape=factor(cyl), linetype=factor(cyl))) +
  geom_point(alpha = .7, size = 3) +
  geom_smooth(method = "lm", se = FALSE, size = 1.5) +
  scale_x_continuous(breaks = seq(from = min(mtcars$hp), to = max(mtcars$hp), by = 10)) +
  scale_y_continuous(breaks = seq(from = floor(min(mtcars$mpg)), to = ceiling(max(mtcars$mpg)), by = 1),
                     label = dollar_format()) +
  scale_color_manual(values = c("4" = "indianred3", "6" = "cornflowerblue", "8" = "black")) +
  theme_bw()

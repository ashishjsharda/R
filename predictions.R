# Load libraries
library(dplyr)
library(ggplot2)

# Create csv 
data <- mtcars
write.csv(data, 'mtcars.csv')

# Import dataset
data <- read.csv('mtcars.csv') 

# Summary statistics
summary(data)

# Data wrangling
data <- data %>%
  filter(mpg > 20) %>%
  mutate(NewVar = hp * wt)

# Visualization
ggplot(data, aes(x = hp, y = wt)) +
  geom_point() + 
  ggtitle('Relationship Between HP and Weight')

# Modeling 
fit <- lm(mpg ~ hp + wt, data = data)
summary(fit)

# Making predictions 
newdata <- data.frame(hp = c(100, 150), wt = c(2.5, 3.0))
predict(fit, newdata)

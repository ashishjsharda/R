library(palmerpenguins)
library(ggthemes)
library(ggplot2)
# set the color of the outline 
ggplot(penguins, aes(x = species)) +
  geom_bar(color = "red")
# fill color of the bars to red
ggplot(penguins, aes(x = species)) +
  geom_bar(fill = "red")

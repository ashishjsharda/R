library(palmerpenguins)
library(ggthemes)
library(ggplot2)
ggplot(penguins, aes(x = species)) +
  geom_bar()

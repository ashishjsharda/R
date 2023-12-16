library(palmerpenguins)
library(ggthemes)
library(ggplot2)
ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "fill")

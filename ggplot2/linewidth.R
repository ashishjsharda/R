library(palmerpenguins)
library(ggthemes)
library(ggplot2)
ggplot(penguins, aes(x = body_mass_g, color = species)) +
  geom_density(linewidth = 0.75)

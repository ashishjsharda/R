library(palmerpenguins)
library(ggthemes)
library(ggplot2)
ggplot(penguins, aes(x = body_mass_g, color = species, fill = species)) +
  geom_density(alpha = 0.5)

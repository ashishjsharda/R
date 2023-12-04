library(palmerpenguins)
library(ggthemes)
library(ggplot2)
ggplot(penguins, aes(x = body_mass_g)) +
  geom_density()

library(palmerpenguins)
library(ggthemes)
library(ggplot2)
ggplot(data = penguins)
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point()

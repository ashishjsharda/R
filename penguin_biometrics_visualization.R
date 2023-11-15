library(palmerpenguins)
library(ggthemes)
library(ggplot2)
penguins |> 
  ggplot(aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point()

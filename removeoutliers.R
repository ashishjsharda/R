library(ggplot2)
library(mosaicData)
CPS85 <- CPS85[CPS85$wage < 40, ] 
ggplot(data = CPS85, mapping = aes(x = exper, y = wage)) +
  geom_point()

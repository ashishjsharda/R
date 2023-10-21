library(ggplot2)
library(mosaicData)
CPS85 <- CPS85[CPS85$wage < 40, ] 
ggplot(data = CPS85, 
       mapping = aes(x = exper, y = wage, 
                     color = sex, shape = sex, linetype = sex)) +
  geom_point(alpha = .7, size = 1.5) +
  geom_smooth(method = "lm", se = FALSE, size = 1.5) +
  theme_bw()

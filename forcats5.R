library(forcats)
library(ggplot2)
gss_cat
ggplot(gss_cat, aes(race)) +
  geom_bar()
ggplot(gss_cat, aes(race)) +
  geom_bar() +
  scale_x_discrete(drop = FALSE)

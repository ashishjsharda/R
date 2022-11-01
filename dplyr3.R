  library(dplyr)
  msleep2 <- msleep %>% filter(bodywt < 2000)
  ggplot(msleep2, aes(brainwt, bodywt)) + geom_point(shape = 17)

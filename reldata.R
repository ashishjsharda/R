library(tidyverse)
library(nycflights13)
airlines
airports
planes
weather
planes %>%
  count(tailnum) %>%
  filter(n > 1)
  

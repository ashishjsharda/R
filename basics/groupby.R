library(tidyverse)
library(nycflights13)
daily <- flights |>  
  group_by(year, month, day)
daily

library(tidyverse)
library(nycflights13)
flights |> 
  group_by(month) |> 
  summarize(
    delay = mean(dep_delay, na.rm = TRUE)
  )

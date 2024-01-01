library(nycflights13)
library(tidyverse)
flights
flights |> 
  arrange(year, month, day, dep_time)

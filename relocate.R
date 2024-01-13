library(nycflights13)
library(tidyverse)
flights |> 
  relocate(time_hour, air_time)

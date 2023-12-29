library(nycflights13)
library(tidyverse)
flights
flights |> 
  filter(month == 1 | month == 2)

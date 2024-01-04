library(nycflights13)
library(tidyverse)
flights |> 
  count(origin,dest,sort = TRUE)

library(nycflights13)
library(tidyverse)
flights |> 
  select(where(is.character))

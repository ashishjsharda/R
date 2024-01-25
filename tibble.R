library(tidyverse)
library(nycflights13)
x <- c(1, 2, 3, 5, 7, 11, 13)
x * 2
df <- tibble(x)
df |> 
  mutate(y = x *  2)

library(tidyr)
library(magrittr)
head(airquality)
airGather<-airquality%>%gather(Metric,value,-c(Month,Day))
airGather

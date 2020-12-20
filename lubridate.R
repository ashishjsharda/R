require(ggplot2)
head(economics)
require(lubridate)
economics$year<-year(economics$date)
economics$month<-month(economics$date)
#2 new columns month and year are added
head(economics)

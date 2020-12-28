require(ggplot2)
head(economics)
require(lubridate)
economics$year<-year(economics$date)
economics$month<-month(economics$date)
#2 new columns month and year are added
head(economics)
econ2001<-economics[which(economics$year>=2001),]
nrow(economics)
nrow(econ2001)
head(econ2001)
econ2001$month<-month(econ2001$date,label = TRUE)
head(econ2001)
require(scales)
g<-ggplot(econ2001,aes(x=month,y=pop))
g<-g+geom_line(aes(color=factor(year),group=year))
g<-g+scale_colour_discrete(name="Year")
g
g<-g+labs(title = "Population Growth",x="Month",y="Population")
g

require(devtools)
install_github('ramnathv/rCharts')
require(rCharts)
hairEye<-as.data.frame(HairEyeColor)
head(hairEye)
rPlot(Freq~Hair|Eye,color="Eye",type="bar",data = hairEye)
data(economics,package="ggplot2")
head(economics)
tail(economics)
summary(economics)
economics$date<-as.character(economics$date)
head(economics)
m1<-mPlot(x="date",y=c("psavert","uempmed"),type="Line",data = economics)
m1$set(pointSize=0,linewidth=1)
m1

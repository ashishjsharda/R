#Plot using given data sets 
data(airquality)
print(head(airquality))
print(summary(airquality))
plot(Ozone~Solar.R,data = airquality)

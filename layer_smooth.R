require(ggvis)
data(cocaine)
head(cocaine)
summary(cocaine)
cocaine %>% ggvis(x=~weight,y=~price,fill=~potency)%>%layer_points()%>%layer_smooths()

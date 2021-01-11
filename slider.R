require(ggvis)
data(cocaine)
head(cocaine)
summary(cocaine)
cocaine %>%ggvis(~weight,~price,fill=~potency,size:=input_slider(0,100),
                 opacity:=input_slider(0,1))%>%layer_points()

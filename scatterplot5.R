data=read.csv("teams.csv") 
attach(data)
summary(data)
plot(teamID,Rank)

library(MASS)
help(painters)
school=painters$School
school.freq=table(school)
pie(school.freq)

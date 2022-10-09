library(ggplot2)
data("msleep")
ggplot(msleep, aes(vore, fill = conservation)) + geom_bar(position = "dodge")

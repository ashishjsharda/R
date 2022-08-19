library(ggplot2)
#set bin width to 1
ggplot(msleep, aes(sleep_total)) + geom_histogram(binwidth = 1)

download.file("https://jaredlander.com/data/ExcelExample.xlsx",destfile = "ExcelExample.xlsx",mode="wb")
library(readxl)
tomatoXsl<-read_excel("ExcelExample.xlsx",sheet = 1)
tomatoXsl

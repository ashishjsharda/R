library("XML")
library(httr)
url <- "http://www.england.nhs.uk/statistics/statistical-work-areas/bed-availability-and-occupancy/"
doc <- htmlParse(rawToChar(GET(url)$content))
doc

require(XML)
theurl<-"https://www.loc.gov/rr/print/list/057_chron.html"
presidents<-readHTMLTable(theurl,which = 3,as.data.frame = TRUE,skip.rows = 1,header=TRUE,stringsAsFactors=FALSE)
head(presidents)

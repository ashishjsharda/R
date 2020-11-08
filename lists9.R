df=data.frame(first=1:5,second=5:1,stringsAsFactors = FALSE)
df
list1<-list(df,1:10)
list1
names(list1) <-c("data.frame","list")
#Assign names to columns
names(list1)
#Print List
list1

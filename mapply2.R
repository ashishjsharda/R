flist<-list(A=matrix(1:16,4),B=matrix(1:16,2))
slist<-list(A=matrix(1:16,8),B=matrix(1:16,2))
mapply(identical,flist,slist)

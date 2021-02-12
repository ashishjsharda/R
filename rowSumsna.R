m11<-matrix(1:9,nrow = 3,ncol = 3)
m11
m11[2,1]<-NA
m11
rowSums(m11,na.rm = TRUE)
colSums(m11,na.rm = TRUE)

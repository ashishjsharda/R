get_symbols<-function(){
  wheel<-c("DD",7,"BB","BBB","C","CCC","0")
  sample(wheel,size = 3,replace = TRUE,prob = c(0.03,0.03,0.06,0.1,0.5,1.0,0.28))
}

get_symbols()

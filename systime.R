abs_loop <- function(vec){
  for (i in 1:length(vec)) {
    if (vec[i] < 0) {
      vec[i] <- -vec[i]
    }
  }
  vec
}
long <- rep(c(-1, 1), 5000000) 
long
system.time(abs_loop(long))

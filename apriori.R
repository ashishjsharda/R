library(arules)
colNames <- c("A",    "B",   "C",   "D",   "E",    "F",    "G",    "I",   "K",    "P",   "T")
vals <-     c( TRUE,  TRUE,  TRUE,  TRUE,  FALSE,  FALSE,  FALSE,  TRUE,  FALSE,  TRUE,  FALSE,
               TRUE,  FALSE,  FALSE,  TRUE,  TRUE,  TRUE,  FALSE,  FALSE,  FALSE,  FALSE,  FALSE,
               FALSE,  TRUE,  TRUE,  TRUE,  TRUE,  FALSE,  FALSE,  FALSE,  FALSE,  FALSE,  FALSE,
               TRUE,  TRUE,  TRUE,  TRUE,  FALSE,  FALSE,  FALSE,  FALSE,  TRUE,  FALSE,  FALSE,
               TRUE,  FALSE,  TRUE,  FALSE,  FALSE,  FALSE,  TRUE,  FALSE,  FALSE,  FALSE,  TRUE)
trans <- data.frame(matrix(vals, nrow=5, byrow = TRUE))
rules <- apriori(trans, parameter = list(supp = 0.6, conf = 0.8, target="rules", minlen=2))

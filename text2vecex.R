library(text2vec)
documents <- c(
  "This is the first document.",
  "This document is the second document.",
  "And this is the third one.",
  "Is this the first document?"
)
tokens<-word_tokenizer(documents)
it_corpus<-itoken(tokens,progressbar=FALSE)
vocab<-create_vocabulary(it_corpus,stopwords=stopwords("en"))
pruned_vocab<-prune_vocabulary(vocab,term_count_min=2)

#TODO

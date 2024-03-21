library(text2vec)
library(stopwords)


documents <- c(
  "This is the first document.",
  "This document is the second document.",
  "And this is the third one.",
  "Is this the first document?"
)

tokens <- word_tokenizer(documents)
it_corpus <- itoken(tokens, progressbar = FALSE)
vocab <- create_vocabulary(it_corpus, stopwords = stopwords("en"))
pruned_vocab <- prune_vocabulary(vocab, term_count_min = 2)

vectorizer <- vocab_vectorizer(pruned_vocab)
dtm <- create_dtm(it_corpus, vectorizer)

# Create a TF-IDF transformer
tfidf <- TfIdf$new()

dtm_tfidf <- tfidf$fit_transform(dtm)

lsa_model <- LSA$new(n_topics = 2)
dtm_lsa <- as.matrix(lsa_model$fit_transform(dtm_tfidf))

print(as.matrix(dtm))
print(dtm_lsa)

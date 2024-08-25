
# Install and load necessary packages
install.packages("tm")
install.packages("wordcloud")
install.packages("RColorBrewer")
library(tm)
library(wordcloud)
library(RColorBrewer)

# Sample text data
text <- "Your sample text goes here. It can be as long as you need it to be."

# Create a text corpus
corpus <- Corpus(VectorSource(text))

# Text cleaning
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeWords, stopwords("english"))

# Create a term-document matrix
tdm <- TermDocumentMatrix(corpus)
m <- as.matrix(tdm)
word_freqs <- sort(rowSums(m), decreasing = TRUE)

# Generate the word cloud
wordcloud(names(word_freqs), word_freqs, scale = c(3, 0.5), min.freq = 1, max.words = 100, random.order = FALSE, rot.per = 0.35, colors = brewer.pal(8, "Dark2"))

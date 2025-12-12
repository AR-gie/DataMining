#
getwd()
setwd("C:/Users/cuadr/OneDrive/Documents")

library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

text_data <- readLines("feedback.txt")

corpus <- Corpus(VectorSource(text_data))

corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, stripWhitespace)
corpus <- tm_map(corpus, stemDocument)

#

tdm <- TermDocumentMatrix(corpus)
mat <- as.matrix(tdm)

word_freq <- sort(rowSums(mat), decreasing = TRUE)

df <- data.frame(
  word = names(word_freq),
  freq = word_freq
)

# Top 10 most frequent words
top10 <- head(df, 10)
print(top10)

#

png("wordcloud_exam.png", width = 800, height = 600)

wordcloud(
  words = df$word,
  freq = df$freq,
  min.freq = 2,
  max.words = 1000,
  random.order = FALSE,
  colors = brewer.pal(8, "Dark2")
)

dev.off()

#

rare_words <- df[order(df$freq), ][1:10, ]

png("wordcloud_rare.png", width = 800, height = 600)

wordcloud(
  words = rare_words$word,
  freq = rare_words$freq,
  min.freq = 1,
  max.words = 200,
  random.order = FALSE,
  colors = brewer.pal(8, "Dark2")
)

dev.off()
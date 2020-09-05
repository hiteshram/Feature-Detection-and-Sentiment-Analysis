library(tm)
library(SnowballC)

fileName="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\Attributes\\audio.txt"
audio=scan(fileName, character(), quote = "")
corpus <- (VectorSource(audio))
corpus <- Corpus(corpus)
corpus <- tm_map(corpus, content_transformer(removePunctuation))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, content_transformer(removeWords), stopwords("english"))
#corpus <- tm_map(corpus, stemDocument)
corpus <- tm_map(corpus, stripWhitespace) 
corpus <- tm_map(corpus, content_transformer(removeNumbers))
audio_df <- data.frame(text = sapply(corpus, paste, collapse = " "), stringsAsFactors = FALSE)

fileName="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\Attributes\\battery.txt"
battery=scan(fileName, character(), quote = "")
corpus <- (VectorSource(battery))
corpus <- Corpus(corpus)
corpus <- tm_map(corpus, content_transformer(removePunctuation))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, content_transformer(removeWords), stopwords("english"))
#corpus <- tm_map(corpus, stemDocument)
corpus <- tm_map(corpus, stripWhitespace) 
corpus <- tm_map(corpus, content_transformer(removeNumbers))
battery_df <- data.frame(text = sapply(corpus, paste, collapse = " "), stringsAsFactors = FALSE)


fileName="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\Attributes\\camera.txt"
camera=scan(fileName, character(), quote = "")
corpus <- (VectorSource(camera))
corpus <- Corpus(corpus)
corpus <- tm_map(corpus, content_transformer(removePunctuation))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, content_transformer(removeWords), stopwords("english"))
#corpus <- tm_map(corpus, stemDocument)
corpus <- tm_map(corpus, stripWhitespace) 
corpus <- tm_map(corpus, content_transformer(removeNumbers))
camera_df <- data.frame(text = sapply(corpus, paste, collapse = " "), stringsAsFactors = FALSE)

fileName="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\Attributes\\design.txt"
design=scan(fileName, character(), quote = "")
corpus <- (VectorSource(design))
corpus <- Corpus(corpus)
corpus <- tm_map(corpus, content_transformer(removePunctuation))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, content_transformer(removeWords), stopwords("english"))
#corpus <- tm_map(corpus, stemDocument)
corpus <- tm_map(corpus, stripWhitespace) 
corpus <- tm_map(corpus, content_transformer(removeNumbers))
design_df <- data.frame(text = sapply(corpus, paste, collapse = " "), stringsAsFactors = FALSE)

fileName="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\Attributes\\fingerprint.txt"
fingerprint=scan(fileName, character(), quote = "")
corpus <- (VectorSource(fingerprint))
corpus <- Corpus(corpus)
corpus <- tm_map(corpus, content_transformer(removePunctuation))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, content_transformer(removeWords), stopwords("english"))
#corpus <- tm_map(corpus, stemDocument)
corpus <- tm_map(corpus, stripWhitespace) 
corpus <- tm_map(corpus, content_transformer(removeNumbers))
fingerprint_df <- data.frame(text = sapply(corpus, paste, collapse = " "), stringsAsFactors = FALSE)

fileName="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\Attributes\\memory.txt"
memory=scan(fileName, character(), quote = "")
corpus <- (VectorSource(memory))
corpus <- Corpus(corpus)
corpus <- tm_map(corpus, content_transformer(removePunctuation))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, content_transformer(removeWords), stopwords("english"))
#corpus <- tm_map(corpus, stemDocument)
corpus <- tm_map(corpus, stripWhitespace) 
corpus <- tm_map(corpus, content_transformer(removeNumbers))
memory_df <- data.frame(text = sapply(corpus, paste, collapse = " "), stringsAsFactors = FALSE)



fileName="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\Attributes\\performance.txt"
performance=scan(fileName, character(), quote = "")
corpus <- (VectorSource(performance))
corpus <- Corpus(corpus)
corpus <- tm_map(corpus, content_transformer(removePunctuation))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, content_transformer(removeWords), stopwords("english"))
#corpus <- tm_map(corpus, stemDocument)
corpus <- tm_map(corpus, stripWhitespace) 
corpus <- tm_map(corpus, content_transformer(removeNumbers))
performance_df <- data.frame(text = sapply(corpus, paste, collapse = " "), stringsAsFactors = FALSE)


fileName="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\Attributes\\os.txt"
os=scan(fileName, character(), quote = "")
corpus <- (VectorSource(os))
corpus <- Corpus(corpus)
corpus <- tm_map(corpus, content_transformer(removePunctuation))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, content_transformer(removeWords), stopwords("english"))
#corpus <- tm_map(corpus, stemDocument)
corpus <- tm_map(corpus, stripWhitespace) 
corpus <- tm_map(corpus, content_transformer(removeNumbers))
os_df <- data.frame(text = sapply(corpus, paste, collapse = " "), stringsAsFactors = FALSE)


fileName="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\Attributes\\others.txt"
others=scan(fileName, character(), quote = "")
corpus <- (VectorSource(others))
corpus <- Corpus(corpus)
corpus <- tm_map(corpus, content_transformer(removePunctuation))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, content_transformer(removeWords), stopwords("english"))
#corpus <- tm_map(corpus, stemDocument)
corpus <- tm_map(corpus, stripWhitespace) 
corpus <- tm_map(corpus, content_transformer(removeNumbers))
others_df <- data.frame(text = sapply(corpus, paste, collapse = " "), stringsAsFactors = FALSE)
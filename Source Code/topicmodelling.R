library(tm)
library(SnowballC)
library(topicmodels)
library(tm)
library(hunspell)
library(stringr)
library(dplyr)

data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\newdataset.csv"
rating=read.csv(data_input,stringsAsFactors = FALSE)
rating_df=data.frame(rating)
rating_df$Review <- as.character(rating_df$Review)
rating_df$Rating_Month=substr(rating[,3],4,6)
rating_df$Rating_Year=paste("20",substr(rating[,3],8,9),sep="")
rating_df$Review=gsub("\n"," ",rating_df$Review)
rating_topic_df=matrix(nrow=0,ncol=14)
#names(rating_topic_df)=c("Mobile","Rating","Date","Review","Topic1","Topic2","Topic3","Topic4","Topic5","Topic6","Topic7","Topic8","Topic9","Topic10","Topic11","Topic12","Topic13","Topic14","Topic15","Topic16","Topic17","Topic18","Topic19","Topic20")
for(i in 1:nrow(rating_df))
{
  rating_list=list(rating_df[i,"Review"])
  #create corpus from vector
  articles.corpus <- Corpus(VectorSource(rating_list))
  # make each letter lowercase
  articles.corpus <- tm_map(articles.corpus, tolower)
  # remove punctuation
  articles.corpus <- tm_map(articles.corpus, removePunctuation)
  #remove numbers
  articles.corpus <- tm_map(articles.corpus, removeNumbers)
  # remove generic and custom stopwords
  stopword <- c(stopwords('english'));
  articles.corpus <- tm_map(articles.corpus, removeWords, stopword)
  #articles.corpus <- tm_map(articles.corpus, stemDocument)
  articles.corpus <- tm_map(articles.corpus, PlainTextDocument)
  articleDtm <- DocumentTermMatrix(articles.corpus, control = list(minWordLength = 3));
  articleDtm2 <- removeSparseTerms(articleDtm, sparse=0.98)
  k = 25
  SEED = 1234
  rowTotals <- apply(articleDtm2 , 1, sum)
  if(rowTotals==0) next
  articleDtm2.new   <- articleDtm2[rowTotals> 0, ]
  article.lda <- LDA(articleDtm2.new, k, method="Gibbs", control=list(seed = SEED))
  lda.topics <- as.matrix(topics(article.lda))
  #lda.topics
  lda.terms <- terms(article.lda)
  #lda.terms
  terms=c(lda.terms)
  audio_dist=match(terms,audio_df$text,nomatch = 0)
  battery_dist=match(terms,battery_df$text,nomatch = 0)
  camera_dist=match(terms,camera_df$text,nomatch = 0)
  design_dist=match(terms,design_df$text,nomatch = 0)
  fingerprint_dist=match(terms,fingerprint_df$text,nomatch = 0)
  memory_dist=match(terms,memory_df$text,nomatch = 0)
  os_dist=match(terms,os_df$text,nomatch = 0)
  others_dist=match(terms,others_df$text,nomatch = 0)
  performance_dist=match(terms,performance_df$text,nomatch = 0)
  audio_var=""
  battery_var=""
  camera_var=""
  design_var=""
  fingerprint_var=""
  memory_var=""
  os_var=""
  others_var=""
  if(sum(audio_dist)>0) audio_var="Yes"
  if(sum(battery_dist)>0) battery_var="Yes"
  if(sum(camera_dist)>0) camera_var="Yes"
  if(sum(design_dist)>0) design_var="Yes"
  if(sum(fingerprint_dist)>0) fingerprint_var="Yes"
  if(sum(memory_dist)>0) memory_var="Yes"
  if(sum(os_dist)>0) os_var="Yes"
  if(sum(others_dist)>0) others_var="Yes"
  rating_topic_df=rbind(rating_topic_df,data.frame(rating_df[i,"Mobile"],rating_df[i,"Rating"],rating_df[i,"Date"],articles.corpus[[1]]$content,rating_df[i,"Rating_Month"],rating_df[i,"Rating_Year"],audio_var,battery_var,camera_var,design_var,fingerprint_var,memory_var,os_var,others_var))
}

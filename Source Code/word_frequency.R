library(tm)
library(hunspell)
library(stringr)
library(dplyr)
data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\newdataset.csv"
rating=read.csv(data_input)
rating_df=data.frame(rating)
rating_df$Review <- as.character(rating_df$Review)
rating_df$Rating_Month=substr(rating[,3],4,6)
rating_df$Rating_Year=paste("20",substr(rating[,3],8,9),sep="")
for(row in 1:nrow(rating_df))
{
  review_text=rating_df[row,"Review"]
  review_text=removeWords(review_text,stopwords("en"))
  review_text=tolower(review_text)
  review_text=removePunctuation(review_text)
  review_text=removeNumbers(review_text)
  review_text=stripWhitespace(review_text)
  word.list=str_split(review_text, "\\s+")
  unlisted_words=unlist(word.list)
  for(i in 1:length(unlisted_words))
  {
    if(!hunspell_check(unlisted_words[i]))
    {
      unlisted_words[i]=unlist(hunspell_suggest(unlisted_words[i]))[1] #identifying correct word and replacing it 
    }
  }
  rating_df[row,"Review"]=as.String(unlisted_words)
}
rating_df$Review=gsub("\n"," ",rating_df$Review)
word_freq=data.frame(table(unlist(strsplit(tolower(rating_df$Review), " "))))
colnames(word_freq)=c("Word","Frequency")
write.csv(word_freq, file="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\wordfrequency.csv")
count=1
features=list()
for(row in 1:nrow(word_freq))
{
  if(word_freq[row,"Frequency"]>=10)
  {
    features[[count]]=word_freq[row,"Word"]
    count=count+1
  }
}
#colnames(output_df)=c("Feature","Rating","Review Count")
one_star=0
two_star=0
three_star=0
four_star=0
five_star=0
output="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\output.csv"
search_feature=as.String(" ")
for(i in 1:length(features))
{
  search_feature=as.String(features[[i]])
  for(j in 1:nrow(rating_df))
  {
    review_text=rating_df[j,"Review"]
    if(grepl(search_feature,review_text))
    {
      rating_value=as.numeric(rating_df[j,"Rating"])
      if(rating_value==1)
        one_star=one_star+1
      if(rating_value==2)
        two_star=two_star+1
      if(rating_value==3)
        three_star=three_star+1
      if(rating_value==4)
        four_star=four_star+1
      if(rating_value==5)
        five_star=five_star+1
    }
  }
  graph_df=data.frame(features[[i]],"5",as.numeric(five_star))
  #graph_df=data.frame("camera","5",as.numeric(five_star))
  write.table(graph_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=TRUE)
  graph_df=data.frame(" ","4",as.numeric(four_star))
  write.table(graph_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=TRUE)
  graph_df=data.frame(" ","3",as.numeric(three_star))
  write.table(graph_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=TRUE)
  graph_df=data.frame(" ","2",as.numeric(two_star))
  write.table(graph_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=TRUE)
  graph_df=data.frame(" ","1",as.numeric(one_star))
  write.table(graph_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=TRUE)
  one_star=0
  two_star=0
  three_star=0
  four_star=0
  five_star=0
} 


#Loading required Libraries
library(tm)
library(hunspell)
library(stringr)
library(dplyr)
#***Input data being loaded from a CSV file
data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\newdataset.csv"
#data_input="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\vivo_v5\\vivov5dataset.csv"
#data_input="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\vivo_v7\\vivov7dataset.csv"
pos=readLines("C:\\Users\\Hitesh\\Documents\\positive_words.txt")
neg=readLines("C:\\Users\\Hitesh\\Documents\\negative_words.txt")
rating=read.csv(data_input)
rating_df=data.frame(rating)
rating_df$Review <- as.character(rating_df$Review)
rating_df$Rating_Month=substr(rating[,3],4,6)
rating_df$Rating_Year=paste("20",substr(rating[,3],8,9),sep="")
#Text pre-processing
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
vector_df=data.frame(matrix(ncol=11,nrow=0))
colnames(vector_df)=c("Mobile","Rating","Date","Review","Rating_Month","Rating_Year","Camera","Battery","Performance","Memory","SentiScore")
for(i in 1:nrow(rating_df))
{
  mobile_var=rating_df[i,"Mobile"]
  rating_var=rating_df[i,"Rating"]
  date_var=rating_df[i,"Date"]
  review_var=rating_df[i,"Review"]
  ratingmonth_var=rating_df[i,"Rating_Month"]
  ratingyear_var=rating_df[i,"Rating_Year"]
  camera_mean=round(mean(stringdist(rating_df[i,"Review"],camera_df$text)),digits = 1)
  battery_mean=round(mean(stringdist(rating_df[i,"Review"],battery_df$text)),digits = 1)
  performance_mean=round(mean(stringdist(rating_df[i,"Review"],performance_df$text)),digits = 1)
  memory_mean=round(mean(stringdist(rating_df[i,"Review"],memory_df$text)),digits = 1)
  max_mean=min(camera_mean,battery_mean,performance_mean,memory_mean)
  camera_var=""
  performance_var=""
  battery_var=""
  memory_var=""
  if(camera_mean == max_mean)
  {
    camera_var = "Yes"
  }
  if(performance_mean == max_mean)
  {
    performance_var = "Yes"
  }
  if(battery_mean == max_mean)
  {
    battery_var="Yes"
  }
  if(memory_mean == max_mean)
  {
    memory_var="Yes"
  }
  word.list=str_split(rating_df[i,"Review"], "\\s+")
  unlisted_words=unlist(word.list)
  pos.matches=match(unlisted_words, pos)
  neg.matches=match(unlisted_words, neg)
  pos.matches=!is.na(pos.matches)
  neg.matches=!is.na(neg.matches)
  
  score=sum(pos.matches)-sum(neg.matches)
  if(score < -5)
  {
    sentiscore_var = 1
  }
  if((score < 0) & (score >= -5 ))
  {
    sentiscore_var = 2
  }
  if(score == 0)
  {
    sentiscore_var = 3
  }
  if((score > 0) & (score <= 5))
  {
    sentiscore_var = 4
  }
  if(score > 5)
  {
    sentiscore_var = 5
  }
  vector_df=rbind(vector_df,data.frame("Mobile"=mobile_var,"Rating"=rating_var,"Date"=date_var,"Review"=review_var,"Rating_Month"=ratingmonth_var,"Rating_Year"=ratingyear_var,"Camera"=camera_var,"Battery"=battery_var,"Performance"=performance_var,"Memory"=memory_var,"SentiScore"=sentiscore_var))
}

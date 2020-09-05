#Loading required Libraries
library(tm)
library(hunspell)
library(stringr)
library(dplyr)
#***Input data being loaded from a CSV file
#data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\newdataset.csv"
#data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\vivo_v5\\vivov5dataset.csv"
#data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\vivo_v7\\vivov7dataset.csv"
#data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplus3\\oneplus3.csv"
#data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplus6\\oneplus6.csv"
data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplus6t\\oneplus6t_temp.csv"
rating=read.csv(data_input)
rating_df=data.frame(rating)
rating_df$Review <- as.character(rating_df$Review)
rating_df$Rating_Month=substr(rating[,3],4,6)
rating_df$Rating_Year=paste("20",substr(rating[,3],8,9),sep="")
rating_topic_df=matrix(nrow=0,ncol=15)
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
for(i in 1:nrow(rating_df))
{
  review_vector=strsplit(rating_df[i,"Review"]," ")[[1]]
  if(length(review_vector)==0){
    next 
  }
  audio_var=""
  battery_var=""
  camera_var=""
  design_var=""
  fingerprint_var=""
  memory_var=""
  os_var=""
  others_var=""
  performance_var=""
  
  audio_dist=cosine_similarity(review_vector,audio_df$text)
  if(audio_dist>0) audio_var="Yes"
  
  battery_dist=cosine_similarity(review_vector,battery_df$text)
  if(battery_dist>0) battery_var="Yes"
  
  camera_dist=cosine_similarity(review_vector,camera_df$text)
  if(camera_dist>0) camera_var="Yes"
  
  design_dist=cosine_similarity(review_vector,design_df$text)
  if(design_dist>0) design_var="Yes"
  
  fingerprint_dist=cosine_similarity(review_vector,fingerprint_df$text)
  if(fingerprint_dist>0) fingerprint_var="Yes"
  
  memory_dist=cosine_similarity(review_vector,memory_df$text)
  if(memory_dist>0) memory_var="Yes"
  
  os_dist=cosine_similarity(review_vector,os_df$text)
  if(os_dist>0) os_var="Yes"
  
  others_dist=cosine_similarity(review_vector,others_df$text)
  if(others_dist>0) others_var="Yes"
  
  performance_dist=cosine_similarity(review_vector,performance_df$text)
  if(performance_dist>0) performance_var="Yes"
  
  rating_topic_df=rbind(rating_topic_df,data.frame(rating_df[i,"Mobile"],rating_df[i,"Rating"],rating_df[i,"Date"],rating_df[i,"Review"],rating_df[i,"Rating_Month"],rating_df[i,"Rating_Year"],audio_var,battery_var,camera_var,design_var,fingerprint_var,memory_var,os_var,performance_var,others_var))
}
    



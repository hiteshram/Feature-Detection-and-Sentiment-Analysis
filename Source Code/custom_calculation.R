#Loading required Libraries
library(tm)
library(hunspell)
library(stringr)
library(dplyr)
#***Input data being loaded from a CSV file
data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\newdataset.csv"
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
#***Output file location
output="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\output-features.csv"
if (file.exists(output)) 
{
  file.remove(output)
}
#Features and Attributes created as a data frame
features_df=data.frame("Feature"=c("Battery","Camera","Storage","Performance","Others"),
                       "Synonymns"=c("battery hours charging power life backup","camera pixels lens capture mp","ram gb internal memory space","quality software speed performance operating system os android update support","price resolution weight slim sound"),
                       stringsAsFactors = FALSE)
unique_year=unique(rating_df["Rating_Year"])
loop_Year=sort(unname(unlist(unique_year)),decreasing = TRUE)
loop_Month = c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
rating_temp_df=rating_df[0,]
one_star=0
two_star=0
three_star=0
four_star=0
five_star=0

for(year in loop_Year)
{
  for(month in loop_Month)
  {
    for(row in 1:nrow(rating_df))
    {
      current_year=rating_df[row,"Rating_Year"]
      current_month=rating_df[row,"Rating_Month"]
      if((current_year==year)&&(current_month==month))
      {
        rating_temp_df=rbind(rating_temp_df,rating_df[row,])
      }
    }
    for(f in 1:nrow(features_df))
    {
      #Splitting the synonymns of each feature
      features_row=strsplit(features_df[f,"Synonymns"], " ")
      #Looping through each synonym of the feature
      for(r in 1:length(features_row[[1]]))
      {
        #Picking one synonym and looping through the review text
        search_feature=as.String(features_row[[1]][r])
        for(j in 1:nrow(rating_temp_df))
        {
          review_text=rating_temp_df[j,"Review"]
          #Checking if the review text has respective synonym if yes returns true else false
          if(length(review_text)>0)
          {
            if(grepl(search_feature,review_text))
            {
              rating_value=as.numeric(rating_temp_df[j,"Rating"])
              #increment respective counter based on rating
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
        }
      }
      #writing the result data to the output file
      graph_df=data.frame(year,month,features_df[f,"Feature"],"5",as.numeric(five_star))
      write.table(graph_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=TRUE)
      graph_df=data.frame(" "," "," ","4",as.numeric(four_star))
      write.table(graph_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=TRUE)
      graph_df=data.frame(" "," "," ","3",as.numeric(three_star))
      write.table(graph_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=TRUE)
      graph_df=data.frame(" "," "," ","2",as.numeric(two_star))
      write.table(graph_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=TRUE)
      graph_df=data.frame(" "," "," ","1",as.numeric(one_star))
      write.table(graph_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=TRUE)
      #re-initialising counters for next iteration
      one_star=0
      two_star=0
      three_star=0
      four_star=0
      five_star=0
    }
    rating_temp_df=rating_temp_df[0,]
  }
}






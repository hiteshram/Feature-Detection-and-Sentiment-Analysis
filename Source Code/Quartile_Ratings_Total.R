library(hashmap)
data_input="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplus6t\\cosinesimilarity_oneplus6t.csv"
rating=read.csv(data_input,stringsAsFactors = FALSE)
rating_df=data.frame(rating)

quarter=c(1,2,3,4)
year=c("2018","2019")

for(j in year)
{
  for(i in quarter)
  {
    if(i==1)
    {
      rating_subset=subset(rating_df,(Year==j)&(Month=="Jan"|Month=="Feb"|Month=="Mar"))
      subset_results(rating_subset,j,i)
    }
    if(i==2)
    {
      rating_subset=subset(rating_df,(Year==j)&(Month=="Apr"|Month=="May"|Month=="Jun"))
      subset_results(rating_subset,j,i)
    }
    if(i==3)
    {
      rating_subset=subset(rating_df,(Year==j)&(Month=="Jul"|Month=="Aug"|Month=="Sep"))
      subset_results(rating_subset,j,i)
    }
    if(i==4)
    {
      rating_subset=subset(rating_df,(Year==j)&(Month=="Oct"|Month=="Nov"|Month=="Dec"))
      subset_results(rating_subset,j,i)
    }
  }
}
subset_results=function (rating_subset,y,quart)
{
  tfidf_input="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplus6t\\TFIDF_Output.csv"
  tfidf=read.csv(tfidf_input,stringsAsFactors = FALSE)
  tfidf_df=data.frame(tfidf)
  tfidf_hash=hashmap(tfidf_df$Attribute,tfidf_df$TFIDF)
  tfidf_count=0
  tfidf_total=0
  tfidf_average=0
  if(nrow(rating_subset))
    for(i in nrow(rating_subset))
    {
      review_text=rating_subset[i,"Review"]
      review_split=strsplit(review_text," ")
      if(length(review_split[[1]])>0)
        for(attr in review_split[[1]])
        {
          if(!is.na(tfidf_hash[[attr]]))
          {
            tfidf_count=tfidf_count+1
            tfidf_total=tfidf_total+tfidf_hash[[attr]]
          }
        }
    }
  
  rating_subset_pos=subset(rating_subset,(Rating==3|Rating==4|Rating==5))
  rating_subset_neg=subset(rating_subset,(Rating==1|Rating==2))
  nrow_pos=nrow(rating_subset_pos)
  nrow_neg=nrow(rating_subset_neg)
  avg_pos=round(mean(rating_subset_pos$Rating),1)
  avg_neg=round(mean(rating_subset_neg$Rating),1)
  avg_qrt=round(mean(rating_subset$Rating),1)
  print(paste(y," ",quart," Pos Count",nrow_pos))
  print(paste(y," ",quart," Pos Average",avg_pos))
  print(paste(y," ",quart," Neg Count",nrow_neg))
  print(paste(y," ",quart," Neg Average",avg_neg))
  print(paste(y," ",quart," Qrt Average",avg_qrt))
  print(paste(y," ",quart," TFIDF",round(tfidf_total/tfidf_count,2)))
}
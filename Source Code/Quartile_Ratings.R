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
        rating_subset=subset(rating_df,(Year==j)&(Month=="Jan"|Month=="Feb"|Month=="Mar")&(Audio=="Yes"))
        subset_results(rating_subset,j,i,"Audio")
        
        rating_subset=subset(rating_df,(Year==j)&(Month=="Jan"|Month=="Feb"|Month=="Mar")&(Battery=="Yes"))
        subset_results(rating_subset,j,i,"Battery")
        
        rating_subset=subset(rating_df,(Year==j)&(Month=="Jan"|Month=="Feb"|Month=="Mar")&(Camera=="Yes"))
        subset_results(rating_subset,j,i,"Camera")

        rating_subset=subset(rating_df,(Year==j)&(Month=="Jan"|Month=="Feb"|Month=="Mar")&(Design=="Yes"))
        subset_results(rating_subset,j,i,"Design")

        rating_subset=subset(rating_df,(Year==j)&(Month=="Jan"|Month=="Feb"|Month=="Mar")&(Fingerprint=="Yes"))
        subset_results(rating_subset,j,i,"Fingerprint")

        rating_subset=subset(rating_df,(Year==j)&(Month=="Jan"|Month=="Feb"|Month=="Mar")&(Memory=="Yes"))
        subset_results(rating_subset,j,i,"Memory")

        rating_subset=subset(rating_df,(Year==j)&(Month=="Jan"|Month=="Feb"|Month=="Mar")&(OS=="Yes"))
        subset_results(rating_subset,j,i,"OS")

        rating_subset=subset(rating_df,(Year==j)&(Month=="Jan"|Month=="Feb"|Month=="Mar")&(Performance=="Yes"))
        subset_results(rating_subset,j,i,"Performance")

        rating_subset=subset(rating_df,(Year==j)&(Month=="Jan"|Month=="Feb"|Month=="Mar")&(Others=="Yes"))
        subset_results(rating_subset,j,i,"Others")
    }
    if(i==2)
    {
       rating_subset=subset(rating_df,(Year==j)&(Month=="Apr"|Month=="May"|Month=="Jun")&(Audio=="Yes"))
       subset_results(rating_subset,j,i,"Audio")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Apr"|Month=="May"|Month=="Jun")&(Battery=="Yes"))
       subset_results(rating_subset,j,i,"Battery")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Apr"|Month=="May"|Month=="Jun")&(Camera=="Yes"))
       subset_results(rating_subset,j,i,"Camera")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Apr"|Month=="May"|Month=="Jun")&(Design=="Yes"))
       subset_results(rating_subset,j,i,"Design")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Apr"|Month=="May"|Month=="Jun")&(Fingerprint=="Yes"))
       subset_results(rating_subset,j,i,"Fingerprint")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Apr"|Month=="May"|Month=="Jun")&(Memory=="Yes"))
       subset_results(rating_subset,j,i,"Memory")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Apr"|Month=="May"|Month=="Jun")&(OS=="Yes"))
       subset_results(rating_subset,j,i,"OS")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Apr"|Month=="May"|Month=="Jun")&(Performance=="Yes"))
       subset_results(rating_subset,j,i,"Performance")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Apr"|Month=="May"|Month=="Jun")&(Others=="Yes"))
       subset_results(rating_subset,j,i,"Others")
    }
    if(i==3)
    {
       rating_subset=subset(rating_df,(Year==j)&(Month=="Jul"|Month=="Aug"|Month=="Sep")&(Audio=="Yes"))
       subset_results(rating_subset,j,i,"Audio")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Jul"|Month=="Aug"|Month=="Sep")&(Battery=="Yes"))
       subset_results(rating_subset,j,i,"Battery")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Jul"|Month=="Aug"|Month=="Sep")&(Camera=="Yes"))
       subset_results(rating_subset,j,i,"Camera")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Jul"|Month=="Aug"|Month=="Sep")&(Design=="Yes"))
       subset_results(rating_subset,j,i,"Design")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Jul"|Month=="Aug"|Month=="Sep")&(Fingerprint=="Yes"))
       subset_results(rating_subset,j,i,"Fingerprint")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Jul"|Month=="Aug"|Month=="Sep")&(Memory=="Yes"))
       subset_results(rating_subset,j,i,"Memory")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Jul"|Month=="Aug"|Month=="Sep")&(OS=="Yes"))
       subset_results(rating_subset,j,i,"OS")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Jul"|Month=="Aug"|Month=="Sep")&(Performance=="Yes"))
       subset_results(rating_subset,j,i,"Performance")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Jul"|Month=="Aug"|Month=="Sep")&(Others=="Yes"))
       subset_results(rating_subset,j,i,"Others")
    }
    if(i==4)
    {
       rating_subset=subset(rating_df,(Year==j)&(Month=="Oct"|Month=="Nov"|Month=="Dec")&(Audio=="Yes"))
       subset_results(rating_subset,j,i,"Audio")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Oct"|Month=="Nov"|Month=="Dec")&(Battery=="Yes"))
       subset_results(rating_subset,j,i,"Battery")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Oct"|Month=="Nov"|Month=="Dec")&(Camera=="Yes"))
       subset_results(rating_subset,j,i,"Camera")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Oct"|Month=="Nov"|Month=="Dec")&(Design=="Yes"))
        subset_results(rating_subset,j,i,"Design")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Oct"|Month=="Nov"|Month=="Dec")&(Fingerprint=="Yes"))
       subset_results(rating_subset,j,i,"Fingerprint")

        rating_subset=subset(rating_df,(Year==j)&(Month=="Oct"|Month=="Nov"|Month=="Dec")&(Memory=="Yes"))
        subset_results(rating_subset,j,i,"Memory")

        rating_subset=subset(rating_df,(Year==j)&(Month=="Oct"|Month=="Nov"|Month=="Dec")&(OS=="Yes"))
        subset_results(rating_subset,j,i,"OS")

        rating_subset=subset(rating_df,(Year==j)&(Month=="Oct"|Month=="Nov"|Month=="Dec")&(Performance=="Yes"))
        subset_results(rating_subset,j,i,"Performance")

       rating_subset=subset(rating_df,(Year==j)&(Month=="Oct"|Month=="Nov"|Month=="Dec")&(Others=="Yes"))
        subset_results(rating_subset,j,i,"Others")
    }
  }
}
subset_results=function (rating_subset,y,quart,feature)
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
    print(paste(y," ",quart,feature," Pos Count",nrow_pos))
    print(paste(y," ",quart,feature," Pos Average",avg_pos))
    print(paste(y," ",quart,feature," Neg Count",nrow_neg))
    print(paste(y," ",quart,feature," Neg Average",avg_neg))
    print(paste(y," ",quart,feature," Qrt Average",avg_qrt))
    print(paste(y," ",quart,feature," TFIDF",round(tfidf_total/tfidf_count,2)))
}
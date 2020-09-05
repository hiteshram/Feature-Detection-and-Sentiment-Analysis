#*************Importing Libraries*************#
library(dplyr)
library(ggplot2)
#************Data Import Section**************#
data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\newdataset.csv"
rating=read.csv(data_input)
if(nrow(rating)>0)
{
  print("Imported the data successfully")
} else
{
  print("Unable to import the data")
}
rating_df=data.frame(rating)
print("Converted to data frame successfully")

#*****Adding new Column Rating Month*********#

rating_df$Rating_Month=substr(rating[,3],4,6)
rating_df$Rating_Year=paste("20",substr(rating[,3],8,9),sep="")
unique_year=unique(rating_df["Rating_Year"])

loop_Year=sort(unname(unlist(unique_year)),decreasing=FALSE)
loop_Month = c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
output="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\output-average.csv"
colnames(average_df) <- c("Year", "Month","Review Count","Average Rating")

if (file.exists(output)) 
{
  file.remove(output)
}

for(i in loop_Year)
{
  for(j in loop_Month)
  {
    count_one=0
    count_two=0
    count_three=0
    count_four=0
    count_five=0
    for(row in 1:nrow(rating_df))
    {
      year=rating_df[row,"Rating_Year"]
      month=rating_df[row,"Rating_Month"]
      rating=rating_df[row,"Rating"]
      if((year==i)&(month==j))
      {
        if((rating=="1")|(rating==1))
        { 
          count_one=count_one+1
        }
        if((rating=="2")|(rating==2))
        {  
          count_two=count_two+1
        }
        if((rating=="3")|(rating==3))
        {
          count_three=count_three+1
        }
        if((rating=="4")|(rating==4))
        {
          count_four=count_four+1
        }
        if((rating=="5")|(rating==5))
        {
          count_five=count_five+1
        }
      }
    }
    average=((count_one*1)+(count_two*2)+(count_three*3)+(count_four*4)+(count_five*5))/(count_one+count_two+count_three+count_four+count_five)
    review_count=(count_one+count_two+count_three+count_four+count_five)
    average_df=data.frame(i,j,review_count,average)
    average_df[is.na(average_df)] = 0
    write.table(average_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=TRUE)
  }
} #close of year
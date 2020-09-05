library(ggplot2)
library(gridExtra)

input_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\vivo_v5\\vivov5_sentiscore.csv",stringsAsFactors = FALSE)
loop_Month=c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")

average_graph_df=data.frame(matrix(ncol=4,nrow=0))
colnames(average_graph_df)=c("Year","Month","Rating Category","Average Rating")

#i=2016
#temp_year_df=subset(input_df,Rating_Year==i)
#for(j in loop_Month)
#{
#  temp_month_df=subset(temp_year_df,Rating_Month==j)
#  average_graph_df=rbind(average_graph_df,data.frame("Year"=i,"Month"=j,"Rating Category"="Rating","Average Rating"=round(mean(temp_month_df$Rating),digits = 1)))
#  average_graph_df=rbind(average_graph_df,data.frame("Year"=i,"Month"=j,"Rating Category"="Senti Score","Average Rating"=round(mean(temp_month_df$SentiScore),digits = 1)))
#}

#plot1=ggplot(data=average_graph_df, aes(x=Month, y=Average.Rating, fill=Rating.Category)) +
#  geom_bar(stat="identity", position=position_dodge(), colour="black")+
#  ggtitle("Monthly Average Rating 2016")+
#  geom_text(aes(label=Average.Rating),
#            position = position_dodge(0.9),vjust = -0.5, size = 3
#  )+
#  #coord_flip()+
#  scale_fill_manual(values=c("#2c7fb8", "#7fcdbb"))+
#  labs(x="Month",
#     y="Average Values")+
#  guides(fill=guide_legend(title="Rating Category"))+
#  theme(axis.text.x  = element_text(angle=90, vjust=0.5,size=12),
#        axis.text.x  = element_text(vjust=0.5,size=12),
#        axis.title.x  = element_text(vjust=0.5,size=16),
#        axis.title.y  = element_text(vjust=0.5,size=16)
#  )

average_graph_df=data.frame(matrix(ncol=4,nrow=0))
colnames(average_graph_df)=c("Year","Month","Rating Category","Average Rating")
i=2017
temp_year_df=subset(input_df,Rating_Year==i)
for(j in loop_Month)
{
  temp_month_df=subset(temp_year_df,Rating_Month==j)
  average_graph_df=rbind(average_graph_df,data.frame("Year"=i,"Month"=j,"Rating Category"="Rating","Average Rating"=round(mean(temp_month_df$Rating),digits = 1)))
  average_graph_df=rbind(average_graph_df,data.frame("Year"=i,"Month"=j,"Rating Category"="Senti Score","Average Rating"=round(mean(temp_month_df$SentiScore),digits = 1)))
}

plot2=ggplot(data=average_graph_df, aes(x=Month, y=Average.Rating, fill=Rating.Category)) +
  geom_bar(stat="identity", position=position_dodge(), colour="black")+
  ggtitle("Monthly Average Rating 2017")+
  geom_text(aes(label=Average.Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 3
  )+
  #coord_flip()+
  scale_fill_manual(values=c("#2c7fb8", "#7fcdbb"))+
  labs(x="Month",
       y="Average Values")+
  guides(fill=guide_legend(title="Rating Category"))+
  theme(axis.text.x  = element_text(angle=90, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16)
  )

average_graph_df=data.frame(matrix(ncol=4,nrow=0))
colnames(average_graph_df)=c("Year","Month","Rating Category","Average Rating")
i=2018
temp_year_df=subset(input_df,Rating_Year==i)
for(j in loop_Month)
{
  temp_month_df=subset(temp_year_df,Rating_Month==j)
  average_graph_df=rbind(average_graph_df,data.frame("Year"=i,"Month"=j,"Rating Category"="Rating","Average Rating"=round(mean(temp_month_df$Rating),digits = 1)))
  average_graph_df=rbind(average_graph_df,data.frame("Year"=i,"Month"=j,"Rating Category"="Senti Score","Average Rating"=round(mean(temp_month_df$SentiScore),digits = 1)))
}

plot3=ggplot(data=average_graph_df, aes(x=Month, y=Average.Rating, fill=Rating.Category)) +
  geom_bar(stat="identity", position=position_dodge(), colour="black")+
  ggtitle("Monthly Average Rating 2018")+
  geom_text(aes(label=Average.Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 3
  )+
  #coord_flip()+
  scale_fill_manual(values=c("#2c7fb8", "#7fcdbb"))+
  labs(x="Month",
       y="Average Values")+
  guides(fill=guide_legend(title="Rating Category"))+
  theme(axis.text.x  = element_text(angle=90, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16)
  )

#average_graph_df=data.frame(matrix(ncol=4,nrow=0))
#colnames(average_graph_df)=c("Year","Month","Rating Category","Average Rating")
#i=2019
#temp_year_df=subset(input_df,Rating_Year==i)
#for(j in loop_Month)
#{
#  temp_month_df=subset(temp_year_df,Rating_Month==j)
#  average_graph_df=rbind(average_graph_df,data.frame("Year"=i,"Month"=j,"Rating Category"="Rating","Average Rating"=round(mean(temp_month_df$Rating),digits = 1)))
#  average_graph_df=rbind(average_graph_df,data.frame("Year"=i,"Month"=j,"Rating Category"="Senti Score","Average Rating"=round(mean(temp_month_df$SentiScore),digits = 1)))
#}

#plot4=ggplot(data=average_graph_df, aes(x=Month, y=Average.Rating, fill=Rating.Category)) +
#  geom_bar(stat="identity", position=position_dodge(), colour="black")+
#  ggtitle("Monthly Average Rating 2019")+
#  geom_text(aes(label=Average.Rating),
#            position = position_dodge(0.9),vjust = -0.5, size = 3
#  )+
#  #coord_flip()+
#  scale_fill_manual(values=c("#2c7fb8", "#7fcdbb"))+
#  labs(x="Month",
#       y="Average Values")+
#  guides(fill=guide_legend(title="Rating Category"))+
#  theme(axis.text.x  = element_text(angle=90, vjust=0.5,size=12),
#        axis.text.x  = element_text(vjust=0.5,size=12),
#        axis.title.x  = element_text(vjust=0.5,size=16),
#        axis.title.y  = element_text(vjust=0.5,size=16)
#  )


average_graph_df=data.frame(matrix(ncol=3,nrow=0))
colnames(average_graph_df)=c("Year","Rating Category","Average Rating")
loop_Year=c(2017,2018)
for(i in loop_Year)
{
  temp_year_df=subset(input_df,Rating_Year==i)
  average_graph_df=rbind(average_graph_df,data.frame("Year"=i,"Rating Category"="Rating","Average Rating"=round(mean(temp_year_df$Rating),digits = 1)))
  average_graph_df=rbind(average_graph_df,data.frame("Year"=i,"Rating Category"="Senti Score","Average Rating"=round(mean(temp_year_df$SentiScore),digits = 1)))
}
average_graph_df$Year=factor(average_graph_df$Year)
plot5=ggplot(data=average_graph_df, aes(x=Year, y=Average.Rating, fill=Rating.Category)) +
  geom_bar(stat="identity", position=position_dodge(), colour="black")+
  ggtitle("Consolidated Yearly Ratings Vivo V5+")+
  geom_text(aes(label=Average.Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 3
  )+
  #coord_flip()+
  scale_fill_manual(values=c("#2c7fb8", "#7fcdbb"))+
  labs(x="Year",
       y="Average Values")+
  guides(fill=guide_legend(title="Rating Category"))+
  theme(axis.text.x  = element_text(angle=90, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16)
  )

grid.arrange(plot2,plot3,plot5,ncol=2,nrow=2)
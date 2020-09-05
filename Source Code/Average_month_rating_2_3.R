library(ggplot2)
library(gridExtra)

vivov3_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\finaldataframe.csv",stringsAsFactors = FALSE)
vivov5_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\vivo_v5\\vivov5_sentiscore.csv",stringsAsFactors = FALSE)
vivov7_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\vivo_v7\\vivov7_sentiscore.csv",stringsAsFactors = FALSE)

average_graph_df=data.frame(matrix(ncol=3,nrow=0))
colnames(average_graph_df)=c("Model","Rating Category","Average Rating")
average_graph_df=rbind(average_graph_df,data.frame("Model"="Vivo V3","Rating Category"="Rating","Average Rating"=round(mean(vivov3_df$Rating),digits = 1)))
average_graph_df=rbind(average_graph_df,data.frame("Model"="Vivo V3","Rating Category"="Senti Score","Average Rating"=round(mean(vivov3_df$SentiScore),digits = 1)))

average_graph_df=rbind(average_graph_df,data.frame("Model"="Vivo V5","Rating Category"="Rating","Average Rating"=round(mean(vivov5_df$Rating),digits = 1)))
average_graph_df=rbind(average_graph_df,data.frame("Model"="Vivo V5","Rating Category"="Senti Score","Average Rating"=round(mean(vivov5_df$SentiScore),digits = 1)))

average_graph_df=rbind(average_graph_df,data.frame("Model"="Vivo V7","Rating Category"="Rating","Average Rating"=round(mean(vivov7_df$Rating),digits = 1)))
average_graph_df=rbind(average_graph_df,data.frame("Model"="Vivo V7","Rating Category"="Senti Score","Average Rating"=round(mean(vivov7_df$SentiScore),digits = 1)))


plot1=ggplot(data=average_graph_df, aes(x=Model, y=Average.Rating, fill=Rating.Category)) +
  geom_bar(stat="identity", position=position_dodge(), colour="black")+
  ggtitle("Average Rating of Vivo Series")+
  geom_text(aes(label=Average.Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 3
  )+
  #coord_flip()+
  scale_fill_manual(values=c("#2c7fb8", "#7fcdbb"))+
  labs(x="Model",
       y="Average Values")+
  guides(fill=guide_legend(title="Rating Category"))+
  theme(axis.text.x  = element_text(angle=90, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16)
  )

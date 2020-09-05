inputv3_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\comparision_vivov3.csv")
inputv3_df$Rating.Category = factor(inputv3_df$Rating.Category, levels = inputv3_df$Rating.Category)
plot1=ggplot(data=inputv3_df, aes(x=Rating.Category, y=Value, fill=Rating.Method)) +
  geom_bar(stat="identity", position=position_dodge(), colour="black")+
  geom_text(aes(label=Value),
            position = position_dodge(0.9),vjust = -0.5, size = 3
  )+
  ggtitle("Vivo V3 Rating Vs SentiScore Plot")+
  #coord_flip()+
  scale_fill_manual(values=c("#2c7fb8", "#7fcdbb"))+
  labs(x="Rating Category",
       y="Values")+
  guides(fill=guide_legend(title="Rating Method"))+
  theme(axis.text.x  = element_text(angle=90, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16)
  )

inputv5_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\comparision_vivov5.csv")
inputv5_df$Rating.Category = factor(inputv5_df$Rating.Category, levels = inputv5_df$Rating.Category)
plot2=ggplot(data=inputv5_df, aes(x=Rating.Category, y=Value, fill=Rating.Method)) +
  geom_bar(stat="identity", position=position_dodge(), colour="black")+
  geom_text(aes(label=Value),
            position = position_dodge(0.9),vjust = -0.5, size = 3
  )+
  ggtitle("Vivo V5 Rating Vs SentiScore Plot")+
  #coord_flip()+
  scale_fill_manual(values=c("#2c7fb8", "#7fcdbb"))+
  labs(x="Rating Category",
       y="Values")+
  guides(fill=guide_legend(title="Rating Method"))+
  theme(axis.text.x  = element_text(angle=90, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16)
  )

inputv7_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\comparision_vivov7.csv")
inputv7_df$Rating.Category = factor(inputv7_df$Rating.Category, levels = inputv7_df$Rating.Category)
plot3=ggplot(data=inputv7_df, aes(x=Rating.Category, y=Value, fill=Rating.Method)) +
  geom_bar(stat="identity", position=position_dodge(), colour="black")+
  geom_text(aes(label=Value),
            position = position_dodge(0.9),vjust = -0.5, size = 3
  )+
  ggtitle("Vivo V7 Rating Vs SentiScore Plot")+
  #coord_flip()+
  scale_fill_manual(values=c("#2c7fb8", "#7fcdbb"))+
  labs(x="Rating Category",
       y="Values")+
  guides(fill=guide_legend(title="Rating Method"))+
  theme(axis.text.x  = element_text(angle=90, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16)
  )
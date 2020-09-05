oneplus3_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\vivo_v3\\cosinesimilarity_v3_output.csv")
oneplus6_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\vivo_v5\\cosinesimilarity_v5_output.csv")
oneplus6t_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\vivo_v7\\cosinesimilarity_v7_output.csv")

audio_v3_one=nrow(subset(vivov3_df,Audio=="Yes"&Rating==1))
audio_v3_two=nrow(subset(vivov3_df,Audio=="Yes"&Rating==2))
audio_v3_three=nrow(subset(vivov3_df,Audio=="Yes"&Rating==3))
audio_v3_four=nrow(subset(vivov3_df,Audio=="Yes"&Rating==4))
audio_v3_five=nrow(subset(vivov3_df,Audio=="Yes"&Rating==5))
audio_v3_mean=(audio_v3_one*1+audio_v3_two*2+audio_v3_three*3+audio_v3_four*4+audio_v3_five*5)/(audio_v3_one+audio_v3_two+audio_v3_three+audio_v3_four+audio_v3_five)

battery_v3_one=nrow(subset(vivov3_df,Battery=="Yes"&Rating==1))
battery_v3_two=nrow(subset(vivov3_df,Battery=="Yes"&Rating==2))
battery_v3_three=nrow(subset(vivov3_df,Battery=="Yes"&Rating==3))
battery_v3_four=nrow(subset(vivov3_df,Battery=="Yes"&Rating==4))
battery_v3_five=nrow(subset(vivov3_df,Battery=="Yes"&Rating==5))
battery_v3_mean=(battery_v3_one*1+battery_v3_two*2+battery_v3_three*3+battery_v3_four*4+battery_v3_five*5)/(battery_v3_one+battery_v3_two+battery_v3_three+battery_v3_four+battery_v3_five)

camera_v3_one=nrow(subset(vivov3_df,Camera=="Yes"&Rating==1))
camera_v3_two=nrow(subset(vivov3_df,Camera=="Yes"&Rating==2))
camera_v3_three=nrow(subset(vivov3_df,Camera=="Yes"&Rating==3))
camera_v3_four=nrow(subset(vivov3_df,Camera=="Yes"&Rating==4))
camera_v3_five=nrow(subset(vivov3_df,Camera=="Yes"&Rating==5))
camera_v3_mean=(camera_v3_one*1+camera_v3_two*2+camera_v3_three*3+camera_v3_four*4+camera_v3_five*5)/(camera_v3_one+camera_v3_two+camera_v3_three+camera_v3_four+camera_v3_five)

design_v3_one=nrow(subset(vivov3_df,Design=="Yes"&Rating==1))
design_v3_two=nrow(subset(vivov3_df,Design=="Yes"&Rating==2))
design_v3_three=nrow(subset(vivov3_df,Design=="Yes"&Rating==3))
design_v3_four=nrow(subset(vivov3_df,Design=="Yes"&Rating==4))
design_v3_five=nrow(subset(vivov3_df,Design=="Yes"&Rating==5))
design_v3_mean=(design_v3_one*1+design_v3_two*2+design_v3_three*3+design_v3_four*4+design_v3_five*5)/(design_v3_one+design_v3_two+design_v3_three+design_v3_four+design_v3_five)

fingerprint_v3_one=nrow(subset(vivov3_df,Fingerprint=="Yes"&Rating==1))
fingerprint_v3_two=nrow(subset(vivov3_df,Fingerprint=="Yes"&Rating==2))
fingerprint_v3_three=nrow(subset(vivov3_df,Fingerprint=="Yes"&Rating==3))
fingerprint_v3_four=nrow(subset(vivov3_df,Fingerprint=="Yes"&Rating==4))
fingerprint_v3_five=nrow(subset(vivov3_df,Fingerprint=="Yes"&Rating==5))
fingerprint_v3_mean=(fingerprint_v3_one*1+fingerprint_v3_two*2+fingerprint_v3_three*3+fingerprint_v3_four*4+fingerprint_v3_five*5)/(fingerprint_v3_one+fingerprint_v3_two+fingerprint_v3_three+fingerprint_v3_four+fingerprint_v3_five)

memory_v3_one=nrow(subset(vivov3_df,Memory=="Yes"&Rating==1))
memory_v3_two=nrow(subset(vivov3_df,Memory=="Yes"&Rating==2))
memory_v3_three=nrow(subset(vivov3_df,Memory=="Yes"&Rating==3))
memory_v3_four=nrow(subset(vivov3_df,Memory=="Yes"&Rating==4))
memory_v3_five=nrow(subset(vivov3_df,Memory=="Yes"&Rating==5))
memory_v3_mean=(memory_v3_one*1+memory_v3_two*2+memory_v3_three*3+memory_v3_four*4+memory_v3_five*5)/(memory_v3_one+memory_v3_two+memory_v3_three+memory_v3_four+memory_v3_five)

os_v3_one=nrow(subset(vivov3_df,OS=="Yes"&Rating==1))
os_v3_two=nrow(subset(vivov3_df,OS=="Yes"&Rating==2))
os_v3_three=nrow(subset(vivov3_df,OS=="Yes"&Rating==3))
os_v3_four=nrow(subset(vivov3_df,OS=="Yes"&Rating==4))
os_v3_five=nrow(subset(vivov3_df,OS=="Yes"&Rating==5))
os_v3_mean=(os_v3_one*1+os_v3_two*2+os_v3_three*3+os_v3_four*4+os_v3_five*5)/(os_v3_one+os_v3_two+os_v3_three+os_v3_four+os_v3_five)

performance_v3_one=nrow(subset(vivov3_df,Performance=="Yes"&Rating==1))
performance_v3_two=nrow(subset(vivov3_df,Performance=="Yes"&Rating==2))
performance_v3_three=nrow(subset(vivov3_df,Performance=="Yes"&Rating==3))
performance_v3_four=nrow(subset(vivov3_df,Performance=="Yes"&Rating==4))
performance_v3_five=nrow(subset(vivov3_df,Performance=="Yes"&Rating==5))
performance_v3_mean=(performance_v3_one*1+performance_v3_two*2+performance_v3_three*3+performance_v3_four*4+performance_v3_five*5)/(performance_v3_one+performance_v3_two+performance_v3_three+performance_v3_four+performance_v3_five)

others_v3_one=nrow(subset(vivov3_df,Others=="Yes"&Rating==1))
others_v3_two=nrow(subset(vivov3_df,Others=="Yes"&Rating==2))
others_v3_three=nrow(subset(vivov3_df,Others=="Yes"&Rating==3))
others_v3_four=nrow(subset(vivov3_df,Others=="Yes"&Rating==4))
others_v3_five=nrow(subset(vivov3_df,Others=="Yes"&Rating==5))
others_v3_mean=(others_v3_one*1+others_v3_two*2+others_v3_three*3+others_v3_four*4+others_v3_five*5)/(others_v3_one+others_v3_two+others_v3_three+others_v3_four+others_v3_five)

########v5########
audio_v5_one=nrow(subset(vivov5_df,Audio=="Yes"&Rating==1))
audio_v5_two=nrow(subset(vivov5_df,Audio=="Yes"&Rating==2))
audio_v5_three=nrow(subset(vivov5_df,Audio=="Yes"&Rating==3))
audio_v5_four=nrow(subset(vivov5_df,Audio=="Yes"&Rating==4))
audio_v5_five=nrow(subset(vivov5_df,Audio=="Yes"&Rating==5))
audio_v5_mean=(audio_v5_one*1+audio_v5_two*2+audio_v5_three*3+audio_v5_four*4+audio_v5_five*5)/(audio_v5_one+audio_v5_two+audio_v5_three+audio_v5_four+audio_v5_five)

battery_v5_one=nrow(subset(vivov5_df,Battery=="Yes"&Rating==1))
battery_v5_two=nrow(subset(vivov5_df,Battery=="Yes"&Rating==2))
battery_v5_three=nrow(subset(vivov5_df,Battery=="Yes"&Rating==3))
battery_v5_four=nrow(subset(vivov5_df,Battery=="Yes"&Rating==4))
battery_v5_five=nrow(subset(vivov5_df,Battery=="Yes"&Rating==5))
battery_v5_mean=(battery_v5_one*1+battery_v5_two*2+battery_v5_three*3+battery_v5_four*4+battery_v5_five*5)/(battery_v5_one+battery_v5_two+battery_v5_three+battery_v5_four+battery_v5_five)

camera_v5_one=nrow(subset(vivov5_df,Camera=="Yes"&Rating==1))
camera_v5_two=nrow(subset(vivov5_df,Camera=="Yes"&Rating==2))
camera_v5_three=nrow(subset(vivov5_df,Camera=="Yes"&Rating==3))
camera_v5_four=nrow(subset(vivov5_df,Camera=="Yes"&Rating==4))
camera_v5_five=nrow(subset(vivov5_df,Camera=="Yes"&Rating==5))
camera_v5_mean=(camera_v5_one*1+camera_v5_two*2+camera_v5_three*3+camera_v5_four*4+camera_v5_five*5)/(camera_v5_one+camera_v5_two+camera_v5_three+camera_v5_four+camera_v5_five)

design_v5_one=nrow(subset(vivov5_df,Design=="Yes"&Rating==1))
design_v5_two=nrow(subset(vivov5_df,Design=="Yes"&Rating==2))
design_v5_three=nrow(subset(vivov5_df,Design=="Yes"&Rating==3))
design_v5_four=nrow(subset(vivov5_df,Design=="Yes"&Rating==4))
design_v5_five=nrow(subset(vivov5_df,Design=="Yes"&Rating==5))
design_v5_mean=(design_v5_one*1+design_v5_two*2+design_v5_three*3+design_v5_four*4+design_v5_five*5)/(design_v5_one+design_v5_two+design_v5_three+design_v5_four+design_v5_five)

fingerprint_v5_one=nrow(subset(vivov5_df,Fingerprint=="Yes"&Rating==1))
fingerprint_v5_two=nrow(subset(vivov5_df,Fingerprint=="Yes"&Rating==2))
fingerprint_v5_three=nrow(subset(vivov5_df,Fingerprint=="Yes"&Rating==3))
fingerprint_v5_four=nrow(subset(vivov5_df,Fingerprint=="Yes"&Rating==4))
fingerprint_v5_five=nrow(subset(vivov5_df,Fingerprint=="Yes"&Rating==5))
fingerprint_v5_mean=(fingerprint_v5_one*1+fingerprint_v5_two*2+fingerprint_v5_three*3+fingerprint_v5_four*4+fingerprint_v5_five*5)/(fingerprint_v5_one+fingerprint_v5_two+fingerprint_v5_three+fingerprint_v5_four+fingerprint_v5_five)

memory_v5_one=nrow(subset(vivov5_df,Memory=="Yes"&Rating==1))
memory_v5_two=nrow(subset(vivov5_df,Memory=="Yes"&Rating==2))
memory_v5_three=nrow(subset(vivov5_df,Memory=="Yes"&Rating==3))
memory_v5_four=nrow(subset(vivov5_df,Memory=="Yes"&Rating==4))
memory_v5_five=nrow(subset(vivov5_df,Memory=="Yes"&Rating==5))
memory_v5_mean=(memory_v5_one*1+memory_v5_two*2+memory_v5_three*3+memory_v5_four*4+memory_v5_five*5)/(memory_v5_one+memory_v5_two+memory_v5_three+memory_v5_four+memory_v5_five)

os_v5_one=nrow(subset(vivov5_df,OS=="Yes"&Rating==1))
os_v5_two=nrow(subset(vivov5_df,OS=="Yes"&Rating==2))
os_v5_three=nrow(subset(vivov5_df,OS=="Yes"&Rating==3))
os_v5_four=nrow(subset(vivov5_df,OS=="Yes"&Rating==4))
os_v5_five=nrow(subset(vivov5_df,OS=="Yes"&Rating==5))
os_v5_mean=(os_v5_one*1+os_v5_two*2+os_v5_three*3+os_v5_four*4+os_v5_five*5)/(os_v5_one+os_v5_two+os_v5_three+os_v5_four+os_v5_five)

performance_v5_one=nrow(subset(vivov5_df,Performance=="Yes"&Rating==1))
performance_v5_two=nrow(subset(vivov5_df,Performance=="Yes"&Rating==2))
performance_v5_three=nrow(subset(vivov5_df,Performance=="Yes"&Rating==3))
performance_v5_four=nrow(subset(vivov5_df,Performance=="Yes"&Rating==4))
performance_v5_five=nrow(subset(vivov5_df,Performance=="Yes"&Rating==5))
performance_v5_mean=(performance_v5_one*1+performance_v5_two*2+performance_v5_three*3+performance_v5_four*4+performance_v5_five*5)/(performance_v5_one+performance_v5_two+performance_v5_three+performance_v5_four+performance_v5_five)

others_v5_one=nrow(subset(vivov5_df,Others=="Yes"&Rating==1))
others_v5_two=nrow(subset(vivov5_df,Others=="Yes"&Rating==2))
others_v5_three=nrow(subset(vivov5_df,Others=="Yes"&Rating==3))
others_v5_four=nrow(subset(vivov5_df,Others=="Yes"&Rating==4))
others_v5_five=nrow(subset(vivov5_df,Others=="Yes"&Rating==5))
others_v5_mean=(others_v5_one*1+others_v5_two*2+others_v5_three*3+others_v5_four*4+others_v5_five*5)/(others_v5_one+others_v5_two+others_v5_three+others_v5_four+others_v5_five)

########v7

audio_v7_one=nrow(subset(vivov7_df,Audio=="Yes"&Rating==1))
audio_v7_two=nrow(subset(vivov7_df,Audio=="Yes"&Rating==2))
audio_v7_three=nrow(subset(vivov7_df,Audio=="Yes"&Rating==3))
audio_v7_four=nrow(subset(vivov7_df,Audio=="Yes"&Rating==4))
audio_v7_five=nrow(subset(vivov7_df,Audio=="Yes"&Rating==5))
audio_v7_mean=(audio_v7_one*1+audio_v7_two*2+audio_v7_three*3+audio_v7_four*4+audio_v7_five*5)/(audio_v7_one+audio_v7_two+audio_v7_three+audio_v7_four+audio_v7_five)

battery_v7_one=nrow(subset(vivov7_df,Battery=="Yes"&Rating==1))
battery_v7_two=nrow(subset(vivov7_df,Battery=="Yes"&Rating==2))
battery_v7_three=nrow(subset(vivov7_df,Battery=="Yes"&Rating==3))
battery_v7_four=nrow(subset(vivov7_df,Battery=="Yes"&Rating==4))
battery_v7_five=nrow(subset(vivov7_df,Battery=="Yes"&Rating==5))
battery_v7_mean=(battery_v7_one*1+battery_v7_two*2+battery_v7_three*3+battery_v7_four*4+battery_v7_five*5)/(battery_v7_one+battery_v7_two+battery_v7_three+battery_v7_four+battery_v7_five)

camera_v7_one=nrow(subset(vivov7_df,Camera=="Yes"&Rating==1))
camera_v7_two=nrow(subset(vivov7_df,Camera=="Yes"&Rating==2))
camera_v7_three=nrow(subset(vivov7_df,Camera=="Yes"&Rating==3))
camera_v7_four=nrow(subset(vivov7_df,Camera=="Yes"&Rating==4))
camera_v7_five=nrow(subset(vivov7_df,Camera=="Yes"&Rating==5))
camera_v7_mean=(camera_v7_one*1+camera_v7_two*2+camera_v7_three*3+camera_v7_four*4+camera_v7_five*5)/(camera_v7_one+camera_v7_two+camera_v7_three+camera_v7_four+camera_v7_five)

design_v7_one=nrow(subset(vivov7_df,Design=="Yes"&Rating==1))
design_v7_two=nrow(subset(vivov7_df,Design=="Yes"&Rating==2))
design_v7_three=nrow(subset(vivov7_df,Design=="Yes"&Rating==3))
design_v7_four=nrow(subset(vivov7_df,Design=="Yes"&Rating==4))
design_v7_five=nrow(subset(vivov7_df,Design=="Yes"&Rating==5))
design_v7_mean=(design_v7_one*1+design_v7_two*2+design_v7_three*3+design_v7_four*4+design_v7_five*5)/(design_v7_one+design_v7_two+design_v7_three+design_v7_four+design_v7_five)

fingerprint_v7_one=nrow(subset(vivov7_df,Fingerprint=="Yes"&Rating==1))
fingerprint_v7_two=nrow(subset(vivov7_df,Fingerprint=="Yes"&Rating==2))
fingerprint_v7_three=nrow(subset(vivov7_df,Fingerprint=="Yes"&Rating==3))
fingerprint_v7_four=nrow(subset(vivov7_df,Fingerprint=="Yes"&Rating==4))
fingerprint_v7_five=nrow(subset(vivov7_df,Fingerprint=="Yes"&Rating==5))
fingerprint_v7_mean=(fingerprint_v7_one*1+fingerprint_v7_two*2+fingerprint_v7_three*3+fingerprint_v7_four*4+fingerprint_v7_five*5)/(fingerprint_v7_one+fingerprint_v7_two+fingerprint_v7_three+fingerprint_v7_four+fingerprint_v7_five)

memory_v7_one=nrow(subset(vivov7_df,Memory=="Yes"&Rating==1))
memory_v7_two=nrow(subset(vivov7_df,Memory=="Yes"&Rating==2))
memory_v7_three=nrow(subset(vivov7_df,Memory=="Yes"&Rating==3))
memory_v7_four=nrow(subset(vivov7_df,Memory=="Yes"&Rating==4))
memory_v7_five=nrow(subset(vivov7_df,Memory=="Yes"&Rating==5))
memory_v7_mean=(memory_v7_one*1+memory_v7_two*2+memory_v7_three*3+memory_v7_four*4+memory_v7_five*5)/(memory_v7_one+memory_v7_two+memory_v7_three+memory_v7_four+memory_v7_five)

os_v7_one=nrow(subset(vivov7_df,OS=="Yes"&Rating==1))
os_v7_two=nrow(subset(vivov7_df,OS=="Yes"&Rating==2))
os_v7_three=nrow(subset(vivov7_df,OS=="Yes"&Rating==3))
os_v7_four=nrow(subset(vivov7_df,OS=="Yes"&Rating==4))
os_v7_five=nrow(subset(vivov7_df,OS=="Yes"&Rating==5))
os_v7_mean=(os_v7_one*1+os_v7_two*2+os_v7_three*3+os_v7_four*4+os_v7_five*5)/(os_v7_one+os_v7_two+os_v7_three+os_v7_four+os_v7_five)

performance_v7_one=nrow(subset(vivov7_df,Performance=="Yes"&Rating==1))
performance_v7_two=nrow(subset(vivov7_df,Performance=="Yes"&Rating==2))
performance_v7_three=nrow(subset(vivov7_df,Performance=="Yes"&Rating==3))
performance_v7_four=nrow(subset(vivov7_df,Performance=="Yes"&Rating==4))
performance_v7_five=nrow(subset(vivov7_df,Performance=="Yes"&Rating==5))
performance_v7_mean=(performance_v7_one*1+performance_v7_two*2+performance_v7_three*3+performance_v7_four*4+performance_v7_five*5)/(performance_v7_one+performance_v7_two+performance_v7_three+performance_v7_four+performance_v7_five)

others_v7_one=nrow(subset(vivov7_df,Others=="Yes"&Rating==1))
others_v7_two=nrow(subset(vivov7_df,Others=="Yes"&Rating==2))
others_v7_three=nrow(subset(vivov7_df,Others=="Yes"&Rating==3))
others_v7_four=nrow(subset(vivov7_df,Others=="Yes"&Rating==4))
others_v7_five=nrow(subset(vivov7_df,Others=="Yes"&Rating==5))
others_v7_mean=(others_v7_one*1+others_v7_two*2+others_v7_three*3+others_v7_four*4+others_v7_five*5)/(others_v7_one+others_v7_two+others_v7_three+others_v7_four+others_v7_five)


library(ggplot2)
audio_plot_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplusattribute\\cosinesimilarity_mean_audio_rating.csv")
battery_plot_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplusattribute\\cosinesimilarity_mean_battery_rating.csv")
camera_plot_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplusattribute\\cosinesimilarity_mean_camera_rating.csv")
design_plot_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplusattribute\\cosinesimilarity_mean_design_rating.csv")
fingerprint_plot_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplusattribute\\cosinesimilarity_mean_fingerprint_rating.csv")
os_plot_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplusattribute\\cosinesimilarity_mean_os_rating.csv")
performance_plot_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplusattribute\\cosinesimilarity_mean_performance_rating.csv")
others_plot_df=read.csv("C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplusattribute\\cosinesimilarity_mean_others_rating.csv")

audio_plot<-ggplot(data=audio_plot_df, aes(x=Mobile, y=Mean.Rating,fill="#003366")) +
  geom_bar(stat="identity",width=0.5)+
  ylim(0,5)+
  ggtitle("Audio")+
  geom_text(aes(label=Mean.Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 4)+
  scale_fill_manual(values=c("#084C61"))+
  labs(x="",
       y="Mean Rating Value")+
  theme(axis.text.x  = element_text(angle=0, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16),
        legend.position="none"
  )

battery_plot<-ggplot(data=battery_plot_df, aes(x=Mobile, y=Mean.Rating,fill="#003366")) +
  geom_bar(stat="identity",width=0.5)+
  ylim(0,5)+
  ggtitle("Battery")+
  geom_text(aes(label=Mean.Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 4)+
  scale_fill_manual(values=c("#084C61"))+
  labs(x="",
       y="")+
  theme(axis.text.x  = element_text(angle=0, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16),
        legend.position="none"
  )

camera_plot<-ggplot(data=camera_plot_df, aes(x=Mobile, y=Mean.Rating,fill="#003366")) +
  geom_bar(stat="identity",width=0.5)+
  ylim(0,5)+
  ggtitle("Camera")+
  geom_text(aes(label=Mean.Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 4)+
  scale_fill_manual(values=c("#084C61"))+
  labs(x="",
       y="")+
  theme(axis.text.x  = element_text(angle=0, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16),
        legend.position="none"
  )

design_plot<-ggplot(data=design_plot_df, aes(x=Mobile, y=Mean.Rating,fill="#003366")) +
  geom_bar(stat="identity",width=0.5)+
  ylim(0,5)+
  ggtitle("Design")+
  geom_text(aes(label=Mean.Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 4)+
  scale_fill_manual(values=c("#084C61"))+
  labs(x="",
       y="")+
  theme(axis.text.x  = element_text(angle=0, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16),
        legend.position="none"
  )

fingerprint_plot<-ggplot(data=fingerprint_plot_df, aes(x=Mobile, y=Mean.Rating,fill="#003366")) +
  geom_bar(stat="identity",width=0.5)+
  ylim(0,5)+
  ggtitle("Fingerprint")+
  geom_text(aes(label=Mean.Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 4)+
  scale_fill_manual(values=c("#084C61"))+
  labs(x="",
       y="Mean Rating Value")+
  theme(axis.text.x  = element_text(angle=0, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16),
        legend.position="none"
  )

os_plot<-ggplot(data=os_plot_df, aes(x=Mobile, y=Mean.Rating,fill="#003366")) +
  geom_bar(stat="identity",width=0.5)+
  ylim(0,5)+
  ggtitle("OS")+
  geom_text(aes(label=Mean.Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 4)+
  scale_fill_manual(values=c("#084C61"))+
  labs(x="",
       y="")+
  theme(axis.text.x  = element_text(angle=0, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16),
        legend.position="none"
  )

performance_plot<-ggplot(data=performance_plot_df, aes(x=Mobile, y=Mean.Rating,fill="#003366")) +
  geom_bar(stat="identity",width=0.5)+
  ylim(0,5)+
  ggtitle("Performance")+
  geom_text(aes(label=Mean.Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 4)+
  scale_fill_manual(values=c("#084C61"))+
  labs(x="",
       y="")+
  theme(axis.text.x  = element_text(angle=0, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16),
        legend.position="none"
  )

others_plot<-ggplot(data=others_plot_df, aes(x=Mobile, y=Mean.Rating,fill="#003366")) +
  geom_bar(stat="identity",width=0.5)+
  ylim(0,5)+
  ggtitle("Other Features")+
  geom_text(aes(label=Mean.Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 4)+
  scale_fill_manual(values=c("#084C61"))+
  labs(x="",
       y="")+
  theme(axis.text.x  = element_text(angle=0, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16),
        legend.position="none"
  )

grid.arrange(audio_plot,battery_plot,camera_plot,design_plot,fingerprint_plot,os_plot,performance_plot,others_plot,nrow=2,ncol=4)
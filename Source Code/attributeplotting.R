camera_one=nrow(subset(vector_df,Camera=="Yes"&SentiScore==1))
camera_two=nrow(subset(vector_df,Camera=="Yes"&SentiScore==2))
camera_three=nrow(subset(vector_df,Camera=="Yes"&SentiScore==3))
camera_four=nrow(subset(vector_df,Camera=="Yes"&SentiScore==4))
camera_five=nrow(subset(vector_df,Camera=="Yes"&SentiScore==5))

battery_one=nrow(subset(vector_df,Battery=="Yes"&SentiScore==1))
battery_two=nrow(subset(vector_df,Battery=="Yes"&SentiScore==2))
battery_three=nrow(subset(vector_df,Battery=="Yes"&SentiScore==3))
battery_four=nrow(subset(vector_df,Battery=="Yes"&SentiScore==4))
battery_five=nrow(subset(vector_df,Battery=="Yes"&SentiScore==5))

memory_one=nrow(subset(vector_df,Memory=="Yes"&SentiScore==1))
memory_two=nrow(subset(vector_df,Memory=="Yes"&SentiScore==2))
memory_three=nrow(subset(vector_df,Memory=="Yes"&SentiScore==3))
memory_four=nrow(subset(vector_df,Memory=="Yes"&SentiScore==4))
memory_five=nrow(subset(vector_df,Memory=="Yes"&SentiScore==5))

performance_one=nrow(subset(vector_df,Performance=="Yes"&SentiScore==1))
performance_two=nrow(subset(vector_df,Performance=="Yes"&SentiScore==2))
performance_three=nrow(subset(vector_df,Performance=="Yes"&SentiScore==3))
performance_four=nrow(subset(vector_df,Performance=="Yes"&SentiScore==4))
performance_five=nrow(subset(vector_df,Performance=="Yes"&SentiScore==5))

vector_plot_df=data.frame(matrix(ncol=3,nrow=0))
colnames(vector_plot_df)=c("Feature","Rating Category","Rating")
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Camera","Rating Category"="One","Rating"=camera_one))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Camera","Rating Category"="Two","Rating"=camera_two))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Camera","Rating Category"="Three","Rating"=camera_three))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Camera","Rating Category"="Four","Rating"=camera_four))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Camera","Rating Category"="Five","Rating"=camera_five))

vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Battery","Rating Category"="One","Rating"=battery_one))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Battery","Rating Category"="Two","Rating"=battery_two))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Battery","Rating Category"="Three","Rating"=battery_three))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Battery","Rating Category"="Four","Rating"=battery_four))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Battery","Rating Category"="Five","Rating"=battery_five))

vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Memory","Rating Category"="One","Rating"=memory_one))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Memory","Rating Category"="Two","Rating"=memory_two))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Memory","Rating Category"="Three","Rating"=memory_three))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Memory","Rating Category"="Four","Rating"=memory_four))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Memory","Rating Category"="Five","Rating"=memory_five))

vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Performance","Rating Category"="One","Rating"=performance_one))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Performance","Rating Category"="Two","Rating"=performance_two))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Performance","Rating Category"="Three","Rating"=performance_three))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Performance","Rating Category"="Four","Rating"=performance_four))
vector_plot_df=rbind(vector_plot_df,data.frame("Feature"="Performance","Rating Category"="Five","Rating"=performance_five))

plot3=ggplot(data=vector_plot_df, aes(x=Feature, y=Rating, fill=Rating.Category)) +
  geom_bar(stat="identity", position=position_dodge(), colour="black")+
  ggtitle("Feature Rating of Vivo V3 with SentiScore")+
  geom_text(aes(label=Rating),
            position = position_dodge(0.9),vjust = -0.5, size = 3
  )+
  #coord_flip()+
  scale_fill_manual(values=c("#E50202","#FF5656","#F9C461","#78C07B","#1BB549"))+
  labs(x="Features",
       y="Rating")+
  guides(fill=guide_legend(title="Rating Category"))+
  theme(axis.text.x  = element_text(angle=90, vjust=0.5,size=12),
        axis.text.x  = element_text(vjust=0.5,size=12),
        axis.title.x  = element_text(vjust=0.5,size=16),
        axis.title.y  = element_text(vjust=0.5,size=16)
  )
#Loading required Libraries
library(tm)
library(hunspell)
library(stringr)
library(dplyr)
library(NLP)
library(openNLP)
library(openNLPmodels.en)
#***Input data being loaded from a CSV file
#data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\vivo_v7\\vivov7dataset.csv"
#data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplus3\\oneplus3.csv"
#data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplus6\\oneplus6.csv"
data_input ="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplus6t\\oneplus6t.csv"
rating=read.csv(data_input)
rating_df=data.frame(rating)
rating_df$Review <- as.character(rating_df$Review)
rating_df$Rating_Month=substr(rating[,3],4,6)
rating_df$Rating_Year=paste("20",substr(rating[,3],8,9),sep="")
#Text pre-processing
word_list=""
for(row in 1:nrow(rating_df))
{
  review_text=rating_df[row,"Review"]
  review_text=removeWords(review_text,stopwords("en"))
  review_text=tolower(review_text)
  #review_text=stemDocument(review_text)
  review_text=removePunctuation(review_text)
  review_text=removeNumbers(review_text)
  review_text=stripWhitespace(review_text)
  word.list=str_split(review_text, "\\s+")
  unlisted_words=unlist(word.list)
  word_list=""
  for(i in 1:length(unlisted_words))
  {
    if(!hunspell_check(unlisted_words[i]))
    {
      unlisted_words[i]=unlist(hunspell_suggest(unlisted_words[i]))[1] #identifying correct word and replacing it 
    }
  }
  rating_df[row,"Review"]=as.String(unlisted_words)
  rating_df$Review=gsub("\n"," ",rating_df$Review)
}
word_list=paste(rating_df$Review,collapse=" ")
word_list=as.String(word_list)
#Creating an annotator to split the reviews into sentences
sent_token_annotator <-Maxent_Sent_Token_Annotator()  
#Creating an annotator to split the sentences into words
word_token_annotator <-Maxent_Word_Token_Annotator()
a2 <-annotate(word_list, list(sent_token_annotator, word_token_annotator))
#Creating a POS tag annontator 
pos_tag_annotator <-Maxent_POS_Tag_Annotator()
a3 <-annotate(word_list, pos_tag_annotator, a2)
#Extracting the words and Tagged POS data and creating a data frame pos_df
a3w <-subset(a3, type == "word")
tags <-sapply(a3w$features, '[[', "POS")
pos_df=data.frame(a3w)
pos_df$features=tags
pos_df$words=word_list[a3w]
##############Tagged List of POS###############
# NN	 Noun, singular or mass   
# NNS	 Noun, plural
# NNP	 Proper noun, singular
# NNPS	 Proper noun, plural
# RBR	 Adverb, comparative
# RBS	 Adverb, superlative
# VB	 Verb, base form
# VBD	 Verb, past tense
# VBG	 Verb, gerund or present participle
# VBN	 Verb, past participle
# VBP	 Verb, non¬3rd person singular present
# VBZ	 Verb, 3rd person singular present
# JJ	 Adjective
# JJR	 Adjective, comparative
# JJS	 Adjective, superlative

pos_sub_df=pos_df[(pos_df[,"features"]=="NN"|
                     pos_df[,"features"]=="NNS"|
                     pos_df[,"features"]=="NNP"|
                     pos_df[,"features"]=="NNP"|
                     pos_df[,"features"]=="NNPS"|
                     pos_df[,"features"]=="RBR"|
                     pos_df[,"features"]=="RBS"|
                     pos_df[,"features"]=="VB"|
                     pos_df[,"features"]=="VBD"|
                     pos_df[,"features"]=="VBG"|
                     pos_df[,"features"]=="VBN"|
                     pos_df[,"features"]=="VBP"|
                     pos_df[,"features"]=="VBZ"|
                     pos_df[,"features"]=="JJ"|
                     pos_df[,"features"]=="JJR"|
                     pos_df[,"features"]=="JJS"
),]

output="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplus6t\\POS_Tagged_Output.csv"
write.table(pos_sub_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=FALSE)
#Calculating Term Frequency and appending to the newly created word_weight_df 
word_weight_df=data.frame(table(pos_sub_df$words))
#Adding column names
names(word_weight_df)=c("Attribute","Term_Freq")
word_weight_df$Attribute=attribute_frequency$Var1
word_weight_df$Term_Frequency=attribute_frequency$Freq

#Calculating The TFIDF Value refer http://www.tfidf.com/ for explanation

for(row in 1:nrow(word_weight_df))
{
  check_word=word_weight_df[row,"Attribute"]
  #Counting the Document frequency value
  count_word=0
  for(review_row in 1:nrow(rating_df))
  {
    review_text=rating_df[review_row,"Review"]
    if(grepl(check_word,review_text,fixed = TRUE))
    {
      count_word=count_word+1
    }
  }
  word_weight_df[row,"Doc_Freq"]=count_word
}
N=nrow(rating_df)

#Applying the formula tfidf(w) = tf(w)*log(N/df(w))
for(row in 1:nrow(word_weight_df))
{
  tf=word_weight_df[row,"Term_Freq"]
  df=word_weight_df[row,"Doc_Freq"]
  tfidf=tf*(log(N/df))
  word_weight_df[row,"TFIDF"]=tfidf
}
output="C:\\Users\\Hitesh\\Documents\\SentimentAnalysis-Phase2\\oneplus6t\\TFIDF_Output.csv"
write.table(word_weight_df,output,sep=",", row.names=FALSE,col.names=FALSE, append=FALSE)
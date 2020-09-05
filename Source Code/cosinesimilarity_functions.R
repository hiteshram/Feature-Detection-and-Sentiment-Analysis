library(lsa)

cosine_similarity = function(review,feature){
  td=tempfile()
  dir.create(td)
  write(review,file=paste(td,"D1",sep="/"))
  write(feature,file=paste(td,"D2",sep="/"))
  myMatrix = textmatrix(td, minWordLength=1)
  #print(myMatrix)
  res <- lsa::cosine(myMatrix[,1], myMatrix[,2])
  return(res[1,1])
}
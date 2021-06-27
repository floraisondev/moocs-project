library(MASS)
library(neuralnet)
library(MASS)
library(rpart)
set.seed(123)
k.data1 <- read.csv( file.choose(), header = TRUE )
head( k.data1 )
dataframe<-k.data1
dataframe$Group=NULL
#dataframe$Gender=NULL
#dataframe$x1=NULL
head(dataframe)
#dataframe<- Boston
str(dataframe)
hist(dataframe$Cluster)
dim(dataframe)
apply(dataframe,2,range)
maxvalue<-apply(dataframe,2,max)
maxvalue
minvalue<-apply(dataframe,2,min)
minvalue
dataframe<-as.data.frame(scale(dataframe,center=minvalue,scale=maxvalue-minvalue))
#ind<-sample(1:nrow(dataframe),350)
#traindf<-dataframe[ind,]
#testdf<-dataframe[-ind,]
library(boot)
set.seed(200)

set.seed(450)
cv.error<-NULL
k<-12
library(plyr)
pbar<-create_progress_bar('text')
pbar$init(k)

for(i in 1:k){
  index<-sample(1:nrow(dataframe),round(0.8*nrow(dataframe)))
  train.cv<-dataframe[index,]
  test.cv<-dataframe[-index,]
  allvars<-colnames(dataframe)
  predictorvars<-allvars[!allvars%in%"Cluster"]
  predictorvars<-paste(predictorvars,collapse="+")
  form=as.formula(paste("Cluster~",predictorvars,collapse="+"))
  nn<-neuralnet(formula=form,hidden=c(4,2),linear.output=T,data=train.cv,stepmax=1e6)
predictions<-neuralnet::compute(nn,test.cv[,-1])
predictions1<-(predictions$net.result*(max(test.cv$Cluster)-min(test.cv$Cluster)))+min(test.cv$Cluster)
actualvalues<-(test.cv$Cluster)*(max(test.cv$Cluster)-min(test.cv$Cluster))+min(test.cv$Cluster)
mse[i]<-sum((predictions1-actualvalues)^2)/nrow(test.cv)
mse[i]
pbar$step
}
mean(mse)
mse
accuracy=(1-mse)*100
accuracy
plot(nn)
library(MASS)
library(neuralnet)
library(MASS)
library(rpart)
set.seed(123)
k.data1 <- read.csv( "new_data.csv", header = TRUE )
head( k.data1 )
dataframe<-k.data1
dataframe$Group=NULL
#dataframe$Gender=NULL
#dataframe$x1=NULL
head(dataframe)
#dataframe<- Boston
str(dataframe)
hist(dataframe$Cluster)
dim(dataframe)
ind<-(1:350)
traindf1<-dataframe[ind,]
testdf1<-dataframe[-ind,]
apply(traindf1,2,range)
maxvalue<-apply(traindf1,2,max)
maxvalue
minvalue<-apply(traindf1,2,min)
minvalue
traindf1<-as.data.frame(scale(traindf1,center=minvalue,scale=maxvalue-minvalue))
#ind<-sample(1:nrow(dataframe),350)
#ind1<-1:350
#traindf<-dataframe[ind1,]
testdf1<-dataframe[-ind,]
apply(testdf1,2,range)
maxvalue<-apply(testdf1,2,max)
maxvalue
minvalue<-apply(testdf1,2,min)
minvalue
testdf1<-as.data.frame(scale(testdf1,center=minvalue,scale=maxvalue-minvalue))
#ind<-sample(1:nrow(dataframe),350)
#ind1<-1:350
#traindf<-dataframe[ind1,]
allvars<-colnames(traindf1)
predictorvars<-allvars[!allvars%in%"Cluster"]
predictorvars<-paste(predictorvars,collapse="+")
form=as.formula(paste("Cluster~",predictorvars,collapse="+"))
neuralmodel<-neuralnet(formula=form,hidden=c(4,2),linear.output=T,data=traindf1,stepmax=1e6)
nnplot<-plot(neuralmodel)
predictions<-compute(neuralmodel,testdf1[,-1])
#predictions
#str(predictions)
#predictions
#predictions$size
#testdf$Cluster
#mse<-sum((predictions$net.result-testdf1$Cluster)^2)/nrow(testdf1)
#plot(predictions$net.result,testdf$Cluster,col="blue")
#predictions1<-(predictions$net.result*(max(testdf1$Cluster)-min(testdf1$Cluster)))+min(testdf1$Cluster)
#actualvalues<-(testdf1$Cluster)*(max(testdf1$Cluster)-min(testdf1$Cluster))+min(testdf1$Cluster)
#mse<-sum((predictions1-actualvalues)^2)/nrow(testdf1)

if(tail(predictions$net.result,1) >0.70){
  print("1")
}else if(tail(predictions$net.result,1)>0.36){
  print("0.5")
}else{
  print("0")
}
#df3<-read.csv("new_data.csv",header=TRUE)
#pred5<-compute(neuralmodel,df3[453,])
#x<--0
#plot(c(x,x,x),c(0,0.5,1),col="blue")
#mse
#predictions1

#actualvalues
#testdf$Cluster
#max(predictions1)
#plot(testdf$Cluster,predictions1,col="blue")
#abline(0,1,col="black")
#reg<-lm(predictions$net.result~testdf$Cluster,data=dataframe)
#abline(reg,col="red")


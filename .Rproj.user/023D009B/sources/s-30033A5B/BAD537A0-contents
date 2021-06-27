library(MASS)
library(rpart)
set.seed(123)
k.data1 <- read.csv( "Workbook8.csv", header = TRUE )
head( k.data1 )
dataframe<-k.data1
dataframe$Group=NULL
dataframe$Gender=NULL
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
#traindf<-dataframe[1:350,]
#testdf<-dataframe[351:434,]
str(dataframe)
#library(plyr)
#library(rpart)
#set.seed(123)
#folds<-split(dataframe,cut(sample(1:nrow(dataframe)),5))
#errs<- rep(NA,length(folds))
#for(i in 1:length(folds))
#{
#  test<-ldply(folds[i],dataframe)
#  train<-ldply(folds[-i],dataframe)

set.seed(450)
outs<-NULL
k<-20
library(plyr)
pbar<-create_progress_bar('text')
pbar$init(k)

for(i in 1:k){
  index<-sample(1:nrow(dataframe),round(0.8*nrow(dataframe)))
  train.cv<-dataframe[index,]
  test.cv<-dataframe[-index,]
dtmodel<-rpart(Cluster ~ . ,data=train.cv,method='class')

#printcp(dtmodel)
#plotcp(dtmodel)
#plot(dtmodel,uniform=TRUE)
#text(dtmodel, use.n=TRUE, all=TRUE, cex=.8)
#post(dtmodel, file = "dt.ps")
#text(dtmodel)
#summary(dtmodel)
predictdt<-predict(dtmodel,test.cv,type='class')
t<-table(predictions=predictdt,actual=test.cv$Cluster)
outs[i]<-1-sum(diag(t))/sum(t)
pbar$step
}
outs
acc<-(1-outs)*100
acc
#mse1
#mean(mse1)
#acc<-(1-mse1)*100
#t
#sum(diag(t))
#sum(t)
#sum(diag(t))/sum(t)#
library(MASS)
library(rpart)
set.seed(123)
k.data1 <- read.csv( "Workbook8.csv", header = TRUE )
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
library(caTools)
ind<-sample.split(Y=dataframe$Cluster,SplitRatio = 0.8)
traindf<-dataframe[ind,]
testdf<-dataframe[!ind,]
dtmodel<-rpart(Cluster ~ . ,data=traindf,method='class')
printcp(dtmodel)
plotcp(dtmodel)
plot(dtmodel,uniform=TRUE)
text(dtmodel, use.n=TRUE, all=TRUE, cex=.8)
#post(dtmodel, file = "dt.ps")
#text(dtmodel)
summary(dtmodel)
predictdt<-predict(dtmodel,testdf,type='class')
t<-table(predictions=predictdt,actual=testdf$Cluster)
t
sum(diag(t))
sum(t)
sum(diag(t))/sum(t)
df1 <- read.csv( "new_data.csv", header = TRUE )
predictdt2<-predict(dtmodel,df1[435,],type='class')
predictdt2
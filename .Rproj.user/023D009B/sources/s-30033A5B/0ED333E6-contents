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

test2<-dataframe[321:397,]
dataframe<-as.data.frame(scale(dataframe,center=minvalue,scale=maxvalue-minvalue))
#dataframe$Age <- (dataframe$Age- min(dataframe$Age))/(max(dataframe$Age)-min(dataframe$Age))
#dataframe$Gender <- (dataframe$Gender- min(dataframe$Gender))/(max(dataframe$Gender)-min(dataframe$Gender))
#dataframe$Expected.Course.Duration <- (dataframe$Expected.Course.Duration- min(dataframe$Expected.Course.Duration))/(max(dataframe$Expected.Course.Duration)-min(dataframe$Expected.Course.Duration))
#dataframe$Interest <- (dataframe$Interest- min(dataframe$Interest))/(max(dataframe$Interest)-min(dataframe$Interest))
#dataframe$Qualification <- (dataframe$Qualification- min(dataframe$Qualification))/(max(dataframe$Qualification)-min(dataframe$Qualification))
#dataframe$Course.ID <- (dataframe$Course.ID- min(dataframe$Course.ID))/(max(dataframe$Course.ID)-min(dataframe$Course.ID))
#dataframe$Expected.Course.Duration <- (dataframe$Actual.Course.Duration- min(dataframe$Actual.Course.Duration))/(max(dataframe$Actual.Course.Duration)-min(dataframe$Actual.Course.Duration))
#pd<-sample(2,nrow(dataframe),replace=TRUE,prob=c(0.8,0.2))
#traindf<-dataframe[pd==1,]
#testdf<-dataframe[pd==2,]
#ind<-sample(1:nrow(dataframe),320)
traindf<-dataframe[1:320,]
testdf<-dataframe[321:396,]
allvars<-colnames(dataframe)
predictorvars<-allvars[!allvars%in%"Actual.Course.Duration"]
predictorvars<-paste(predictorvars,collapse="+")
form=as.formula(paste("Actual.Course.Duration~",predictorvars,collapse="+"))
neuralmodel<-neuralnet(formula=form,hidden=c(4,2),linear.output=T,data=traindf,stepmax=1e6)
plot(neuralmodel)
predictions<-neuralnet::compute(neuralmodel,testdf[,-1])
#predictions
str(predictions)
predictions
predictions$size
actual<-testdf$Actual.Course.Duration
mse<-sum((predictions$net.result-actual)^2)/nrow(testdf)
#plot(testdf$Cluster,predictions,col="blue")
predictions1<-predictions$net.result*(52-0.142)+0.142
#actualvalues<-(actual)*(15-0.142)+0.142
out<-tail(predictions1,1)

mse<-sum((predictions1-test2$Actual.Course.Duration)^2)/nrow(testdf)
mse
#predictions1

#actualvalues
#testdf$Cluster
#plot(testdf$Cluster,predictions1,col="blue")
#abline(0,1,col="black")
#reg<-lm(predictions1~testdf$Cluster,data=dataframe)
#abline(reg,col="red")


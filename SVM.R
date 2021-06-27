k.data <- read.csv( ("Workbook8.csv"), header = TRUE )
head( k.data )
dataframe<-k.data[1:434,]
dataframe$Group=NULL

str(dataframe)
hist(dataframe$Cluster)
dim(dataframe)
apply(dataframe,2,range)
maxvalue<-apply(dataframe,2,max)
maxvalue
minvalue<-apply(dataframe,2,min)
minvalue
dataframe<-as.data.frame(scale(dataframe,center=minvalue,scale=maxvalue-minvalue))
library(caret)


set.seed(3033)
intrain <- createDataPartition(y = dataframe$Cluster, p= 0.8, list = FALSE)
training <- dataframe[intrain,]
testing <- dataframe[-intrain,]
training[["Cluster"]] = factor(training[["Cluster"]])


trctrl <- trainControl(method = "repeatedcv", number = 10, repeats = 3)
set.seed(3233)

svm_Linear <- train(Cluster ~., data = training, method = "svmLinear",
                    trControl=trctrl,
                    preProcess = c("center", "scale"),
                    tuneLength = 10)
#plot(svm_Linear)
test_pred <- predict(svm_Linear, newdata = testing,method="class")
tail( test_pred,1)
confusionMatrix(test_pred, testing$Cluster )
#tail(test_pred,1)
library(R.utils)

k.data2 <- read.csv( "new_data.csv", header = TRUE )
#v<-c(1,25-35,25,10,4,3,8,1)
Age<-35
#Age<-as.data.frame(scale(Age,center=15,scale=65-15))
Expected.Course.Duration<-8
#Expected.Course.Duration<-as.data.frame(scale(Expected.Course.Duration,center=5,scale=17-5))
Interest<-5
#Interest<-as.data.frame(scale(Interest,center=5,scale=5-1))
Qualification<-4
#Qualification<-as.data.frame(scale(Qualification,center=0,scale=5-0))
Course.ID<-3
#Course.ID<-as.data.frame(scale(Course.ID,center=1,scale=57-1))
Gender<-0
#Gender<-as.data.frame(scale(Gender,center=0,scale=2-0))
v<-c(Age,Expected.Course.Duration,Interest,Qualification,Course.ID,Gender)
v1<-k.data2[435,]
#test_pred <- predict(svm_Linear, newdata =k.data2[435,] ,method="class")
test_pred <- predict(svm_Linear, newdata =v ,method="class")
print(test_pred)
x<-test_pred
if(x==0)
  C<-"cluster1"
if(x==0.5)
  C<-"cluster2"
if(x==1)
  C<-"cluter3"
print(C)

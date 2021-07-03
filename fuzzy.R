k.data1 <- read.csv( file.choose(), header = TRUE )
head( k.data1 )
i1<-k.data1
i1$Group=NULL
head(i1)
data(i1,package="rattle")
i1.scaled<-scale(i1)
head(i1.scaled)
res<-kmeans(i1.scaled,3)
#res<-kmeans(i1,3)
res
res$size
res1<-cbnid(res$cluster)
require(car)
sp(Expected.Course.Duration ~ Actual.Course.Duration | Age, data=i1.scaled,xlab="AD",ylab="ED",main="age",labels=row.names(i1.scaled))
library(cluster)
clusplot(i1.scaled,res$cluster,main="2D REP",shade=TRUE,labels=2,lines=0)
library(e1071)
i2<-k.data1
i2$Group=NULL
i2.scaled<-scale(i2)
res2<-cmeans (i2.scaled, 3, iter.max=100, verbose=FALSE, dist="euclidean",method="cmeans", m=2, rate.par = NULL)
res2
head(res2$membership)
library(corrplot)
corrplot(res2$membership, is.corr = FALSE)
res2$cluster
res2$size
library(factoextra)
fviz_cluster(list(data = i2.scaled, cluster=res2$cluster),ellipse.type = "norm", ellipse.level = 0.7,palette = "jco",ggtheme = theme_minimal())


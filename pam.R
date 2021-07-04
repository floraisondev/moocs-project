k.data1 <- read.csv( "reg.csv", header = TRUE )
head( k.data1 )
install.packages("fpc")
library(cluster)
pam(k.data1, 3, metric = "manhattan")
dfPam<-pam(k.data1,3,metric = "manhattan")
dfPam
dfPam$medoids
install.packages('factoextra')
library(factoextra)
fviz_cluster(dfPam,stand=F, geom = "point",ellipse.type = "norm", ellipse.level = 0.7,palette = "jco",ggtheme = theme_minimal())
fviz_nbclust(dfPam, pam, method = "silhouette") + theme_classic()


if(interactive()){#
  # This is the server logic of a Shiny web application. You can run the 
  # application by clicking 'Run App' above.
  #
  # Find out more about building applications with Shiny here:
  # 
  #    http://shiny.rstudio.com/
  #
  
  library(shiny)
  library(ggplot2)
  library(scales)
  
  # Define server logic required to draw a histogram
  shinyServer(function(input, output) {
    setwd("C:/Users/Devanshi/Desktop/Moocs")
      output$display<-renderText("These are the courses and their actual durations")
      output$display1<-renderText("Course ID course Name Expected Duration")
      output$display2<-renderText("-----------------------------------------")
      k.data3<-read.csv("course_information.csv")
      str(k.data3)
      head(k.data3)
      output$print1<-renderTable(print(k.data3[,c(1,2,4)]))
      output$print2<-renderPrint(print(k.data3[2,c(1,3)]))
      output$print3<-renderPrint(print(k.data3[3,c(1,3)]))
      output$print4<-renderPrint(print(k.data3[4,c(1,3)]))
      output$print5<-renderPrint(print(k.data3[5,c(1,3)]))
      output$print6<-renderPrint(print(k.data3[6,c(1,3)]))
      output$print7<-renderPrint(print(k.data3[7,c(1,3)]))
      output$print8<-renderPrint(print(k.data3[8,c(1,3)]))
      output$print9<-renderPrint(print(k.data3[9,c(1,3)]))
      output$print10<-renderPrint(print(k.data3[10,c(1,3)]))
      output$print11<-renderPrint(print(k.data3[11,c(1,3)]))
      output$print12<-renderPrint(print(k.data3[12,c(1,3)]))
      output$print13<-renderPrint(print(k.data3[13,c(1,3)]))
      output$print14<-renderPrint(print(k.data3[14,c(1,3)]))
      output$print15<-renderPrint(print(k.data3[15,c(1,3)]))
      output$print16<-renderPrint(print(k.data3[16,c(1,3)]))
      output$print17<-renderPrint(print(k.data3[17,c(1,3)]))
      output$print18<-renderPrint(print(k.data3[18,c(1,3)]))
      output$print19<-renderPrint(print(k.data3[19,c(1,3)]))
      output$print20<-renderPrint(print(k.data3[20,c(1,3)]))
      output$print21<-renderPrint(print(k.data3[21,c(1,3)]))
      output$print22<-renderPrint(print(k.data3[22,c(1,3)]))
      output$print23<-renderPrint(print(k.data3[23,c(1,3)]))
      output$print24<-renderPrint(print(k.data3[24,c(1,3)]))
      output$print25<-renderPrint(print(k.data3[25,c(1,3)]))
      output$print26<-renderPrint(print(k.data3[26,c(1,3)]))
      output$print27<-renderPrint(print(k.data3[27,c(1,3)]))
      output$print28<-renderPrint(print(k.data3[28,c(1,3)]))
      output$print29<-renderPrint(print(k.data3[29,c(1,3)]))
      output$print30<-renderPrint(print(k.data3[30,c(1,3)]))
      output$print31<-renderPrint(print(k.data3[31,c(1,3)]))
      output$print32<-renderPrint(print(k.data3[32,c(1,3)]))
      output$print33<-renderPrint(print(k.data3[33,c(1,3)]))
      output$print34<-renderPrint(print(k.data3[34,c(1,3)]))
      output$print35<-renderPrint(print(k.data3[35,c(1,3)]))
      output$print36<-renderPrint(print(k.data3[36,c(1,3)]))
      output$print37<-renderPrint(print(k.data3[37,c(1,3)]))
      output$print38<-renderPrint(print(k.data3[38,c(1,3)]))
      output$print39<-renderPrint(print(k.data3[39,c(1,3)]))
      output$print40<-renderPrint(print(k.data3[40,c(1,3)]))
      output$print41<-renderPrint(print(k.data3[41,c(1,3)]))
      output$print42<-renderPrint(print(k.data3[42,c(1,3)]))
      output$print43<-renderPrint(print(k.data3[43,c(1,3)]))
      output$print44<-renderPrint(print(k.data3[44,c(1,3)]))
      output$print45<-renderPrint(print(k.data3[45,c(1,3)]))
      output$print46<-renderPrint(print(k.data3[46,c(1,3)]))
      output$print47<-renderPrint(print(k.data3[47,c(1,3)]))
      output$print48<-renderPrint(print(k.data3[48,c(1,3)]))
      output$print49<-renderPrint(print(k.data3[49,c(1,3)]))
      output$print50<-renderPrint(print(k.data3[50,c(1,3)]))
      output$print51<-renderPrint(print(k.data3[51,c(1,3)]))
      output$print52<-renderPrint(print(k.data3[52,c(1,3)]))
      output$print53<-renderPrint(print(k.data3[53,c(1,3)]))
      output$print54<-renderPrint(print(k.data3[54,c(1,3)]))
      output$print55<-renderPrint(print(k.data3[55,c(1,3)]))
      output$print56<-renderPrint(print(k.data3[56,c(1,3)]))
      output$print57<-renderPrint(print(k.data3[57,c(1,3)]))
      output$print58<-renderPrint(print(k.data3[58,c(1,3)]))
      library(MASS)
      library(e1071)
      library(neuralnet)
      library(MASS)
      library(rpart)
      set.seed(123)
       #Age<-input$Age1
      #Age<-as.data.frame(scale(Age,center=15,scale=65-15))
        #Expected.Course.Duration<-input$Expected
      #Expected.Course.Duration<-as.data.frame(scale(Expected.Course.Duration,center=5,scale=17-5))
         #Interest<-input$Interest1
      #Interest<-as.data.frame(scale(Interest,center=5,scale=5-1))
          #Qualification<-input$Qualification1
      #Qualification<-as.data.frame(scale(Qualification,center=0,scale=5-0))
           #Course.ID<-input$Course1
      #Course.ID<-as.data.frame(scale(Course.ID,center=1,scale=57-1))
            #Gender<-input$Gen
      #Gender<-as.data.frame(scale(Gender,center=0,scale=2-0))
     
      #v<-c(Age,Expected.Course.Duration,Interest,Qualification,Course.ID,Gender)
      #write.table(v,file="new_data1.csv")
      k.data1 <- read.csv( "Workbook8.csv", header = TRUE )
      output$display5<- renderTable(print(k.data1[1:435,]))
      
      head( k.data1 )
      dataframe<-k.data1
      dataframe$Group=NULL
      #dataframe$Gender=NULL
      #dataframe$x1=NULL
      head(dataframe)
      #dataframe<- Boston
      str(dataframe)
      # hist(dataframe$Cluster)
      dim(dataframe)
      ind<-(1:350)
      traindf1<-dataframe[ind,]
      testdf1<-dataframe[-ind,]
      apply(traindf1,2,range)
      maxvalue<-apply(traindf1,2,max)
      maxvalue
      minvalue<-apply(traindf1,2,min)
      minvalue
      traindf2<-traindf1
      traindf1<-as.data.frame(scale(traindf1,center=minvalue,scale=maxvalue-minvalue))
      
      traindf2$Cluster=NULL
      apply(traindf2,2,range)
      maxvalue1<-apply(traindf2,2,max)
      maxvalue1
      minvalue1<-apply(traindf2,2,min)
      minvalue1
      
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
      plot(neuralmodel)
      
      
      library(R.utils)
      
      
      #k.data2 <- read.csv( "new_data.csv", header = TRUE )
      #v<-c(1,25-35,25,10,4,3,8,1)
      observe({
        output11<-cbind(input$Age1,input$Expected,input$Interest1,input$Qualification1,input$Course1,input$Gen)
        write.csv(output11,"newdatax.csv",row.names = F)
        k.data2 <- read.csv( "newdatax.csv", header = TRUE )
        k.data1 <- read.csv( "Workbook8.csv", header = TRUE )
        
        
        head( k.data1 )
        dataframe<-k.data1
        dataframe$Group=NULL
        #dataframe$Gender=NULL
        #dataframe$x1=NULL
        head(dataframe)
        #dataframe<- Boston
        str(dataframe)
        # hist(dataframe$Cluster)
        dim(dataframe)
        ind<-(1:350)
        traindf1<-dataframe[ind,]
        testdf1<-dataframe[-ind,]
        apply(traindf1,2,range)
        maxvalue<-apply(traindf1,2,max)
        maxvalue
        minvalue<-apply(traindf1,2,min)
        minvalue
        traindf2<-traindf1
        traindf2$Cluster=NULL
        apply(traindf2,2,range)
        maxvalue1<-apply(traindf2,2,max)
        maxvalue1
        minvalue1<-apply(traindf2,2,min)
        minvalue1
        
      k.data2<-as.data.frame(scale(k.data2,center=minvalue1,scale=maxvalue1-minvalue1))
      predictions<-compute(neuralmodel,k.data2)
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
        output$C<-renderText("Course not completed")
      }else if(tail(predictions$net.result,1)>0.36){
        output$C<-renderText("Course Completed")
      }else{
        output$C<-renderText("Course completed but not on time")
      }
      
    })
  })
}
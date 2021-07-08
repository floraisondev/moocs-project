if(interactive()){#
  # This is the user-interface definition of a Shiny web application. You can
  # run the application by clicking 'Run App' above.
  #
  # Find out more about building applications with Shiny here:
  # 
  #    http://shiny.rstudio.com/
  #
  
  library(shiny)
  
  # Define UI for application that draws a histogram
  shinyUI(fluidPage(
    tags$head(tags$style
              (HTML('#sidebar{background-color:#dec4de;} body, label, input, button, select{font-family:n"Arial";}'))),
    # Application title
    titlePanel(h2("MACHINE LEARNING MODELS FOR ENVISAGING COURSE ATTRITIONS IN MOOCS",style="color:#fff;background-color:#4d3a7d")),
    
    # Sidebar with a slider input for number of bins 
    
    sidebarLayout(
      sidebarPanel(
        numericInput("Interest1",
                     "Interset(on a scale of 1 to 5)",value=1,
                     min = 1,
                     max = 5
        ),
        radioButtons("Gen",
                     label="Gender",
                     choices=list("Male"=0,"Female"=1,"Other"=2),
                     selected=0
        ),
        numericInput("Course1",
                     "CourseID",value=1,
                     min = 1,
                     max = 57
        ),
        numericInput("Expected",
                     "Expected Course Duration",value=5,
                     min = 5,
                     max = 17
        ),
        radioButtons("Qualification1",
                     label="Qualification",choices=list("<10th grade"=0,"10th Graduate"=1,"12th Graduate"=2,"Under Graduate"=3,"Post Graduate"=4,"Doctorate"=5),
                     selected = 0
                     
        ),
        radioButtons("Age1",
                     label="Age",
                     choices = list("<15"=15,"15-25"=25,"25-35"=35,"35-45"=45,"45-55"=55,">55"=65),
                     selected=15
        ),
        submitButton("submit")
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
        tabsetPanel(type="tab",
                    tabPanel("Instructions",textOutput("display"),textOutput("display1"),textOutput("display2"),tableOutput("print1")),
                    tabPanel("Output", textOutput("C"),tags$img(width="700",height="600",src="nueralnet.png")),
                    tabPanel("Other Models",tags$img(width="600",height="450",src="desci.png"),tags$img(src="svm1.png")),
                    tabPanel("Accuracy",tags$img(src="nnvalid1.png"),tags$img(width="1000",height="150",src="dtvalid1.png"),tags$img(src="svmvalid.png")),
                    #tabPanel("Course Recommendation",textOutput("disp1"),textOutput("disp2")),
                    tabPanel("Clustering Results",tags$img(width="500",height="300",src="pamclusterplot.png"),tags$img(width="700",height="400",src="pammedoids.png")),
                    tabPanel("Data Set",tableOutput("display5"))
                    #tabPanel("instructions",textOutput("display"),tableOutput("print1"),tableOutput("print2"))
        )
        
      )
    )
    
  ))
}
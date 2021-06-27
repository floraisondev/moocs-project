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
                     label="Qualification",choices=list("<10th grade"=0,"10th graduate"=1,"12th graduate"=2,"under graduate"=3,"post graduate"=4,"doctorate"=5),
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
                    tabPanel("Output",tags$img(src="neuralnet2.png"),textOutput("C")),
                    tabPanel("other_models",tags$img(src="dtree.png"),tags$img(src="svm.png")),
                    tabPanel("cross_validation",tags$img(src="nnet.png"),tags$img(src="dt1.png"),tags$img(src="svm1.png")),
                    tabPanel("Clustering_results",tags$img(src="sil.png"),tags$img(src="clu.png")),
                    tabPanel("data_set",tableOutput("display5"))
                    #tabPanel("instructions",textOutput("display"),tableOutput("print1"),tableOutput("print2"))
        )
        
      )
    )
    
  ))
}
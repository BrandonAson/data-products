library(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Predict the MPG for a car based on its weight"),
       sidebarPanel(
         numericInput("n1", "weight in lbs/1000:  min = 1, max = 5 ", value = 1, min = 0, max = 5),
         
         h4("Shiny App Guidelines:"),
         h5("Enter a car weight ranging from 1 to 5 (lbs/1000) in the above text box."),
         h5(""),
         h5("In the main panel you will see the predicted miles per gallon (MPG)."),
         h5(""),
         h5("This prediction is based on a linear model fit to the mtcars dataset.")
      ),
                          
        mainPanel(
          h3("Predicted MPG is: "),
          textOutput("o1"),
          h3("Plot:"),
          plotOutput("graph")
        
      )
    ))
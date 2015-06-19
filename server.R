library(shiny)
data(mtcars)

shinyServer(function(input,output){
  

  fit <- lm(formula = mpg ~ wt,data = mtcars)
  
  
  output$o1 <- renderPrint({

      paste(round(as.numeric(predict(fit, data.frame("wt" = input$n1))),2), "MPG")
  })
  
  output$graph <- renderPlot({

      plot(mtcars$wt, mtcars$mpg, main = "MPG VS Weight",
           ylab = "MPG", xlab = "weight (lbs/1,000)", type = "n" )
      points(mtcars$wt, mtcars$mpg, col = "darkgreen")
      abline(fit, col = "black")
      
     points(input$n1, as.numeric(predict(fit, data.frame("wt" = input$n1))),
            col = "darkred", cex = 2, pch =3)
    
  })
  
})
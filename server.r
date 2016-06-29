library(shiny)

shinyServer(
  function(input, output) {
    output$myhist <- renderPlot({
      colm <-input$dose
      newdata <- subset(ToothGrowth, dose == colm)
      boxplot(len ~ supp, data = newdata, main = "Tooth Growth", ylab = "Length", xlab = "Supplement and Dose", col = input$color)
    })
    
  }
)


library(shiny)


shinyUI(fluidPage(
  
  titlePanel(title = "Analysis of ToothGrowth Data"),
  sidebarLayout(
    sidebarPanel(
      selectInput("dose", "1. Select the dosage amount", choices = c(0.5, 1.0, 2.0), selectize = FALSE, selected = 0.5, multiple = FALSE),
      br(),
      
      radioButtons("color", "3. Select the color of boxplot", choices=c("Yellow" ,"Red","Blue"))
      
    ),
     
    mainPanel(
      plotOutput("myhist")
    )
   
  )
)
)
library(shiny)

ConvertFC <- function(nombor) {nombor* 0.5}
ConvertFG <- function(nombor) {nombor* 0.2}
ConvertFS <- function(nombor) {nombor* 0.3}



server <- function(input,output) {
  output$USD <- renderPrint(input$number)
  output$FC <- renderPrint({ConvertFC(input$number)})
  output$FG <- renderPrint({ConvertFG(input$number)})
  output$FS <- renderPrint({ConvertFS(input$number)})
  }
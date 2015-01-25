# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(quantmod)
library(forecast)

shinyServer(function(input, output) {

  getStock <- reactive({
    # get stock history price
    getSymbols(input$stockSym, 
               from=input$dateRange[1],to=input$dateRange[2],
               auto.assign=FALSE)
  })
  
  output$tsPlot <- renderPlot({
    # draw stock price with predictions
    data <- getStock()[,4]

    plot(rwf(data, input$ndays, drift=TRUE), 
         xlab="Date",ylab="Price",main="Stock Prediction")

  })

})

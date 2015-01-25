
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Stock Historical Price and Prediction"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      textInput("stockSym","Input Valid Stock Symbol (SPY, UCO, etc.)","SPY"),
      dateRangeInput("dateRange","Date Range",start=Sys.Date()-365, end=Sys.Date()),
      sliderInput("ndays","Days to predict",min=1,max=300,value=10,step=1)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("tsPlot")
    )
  )
))

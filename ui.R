library(shiny)
library(UsingR)


shinyUI(fluidPage(
  
  titlePanel("forecasting weight of baby boys at birth"),
  
  sidebarLayout(position="right",
                
                sidebarPanel(
                  sliderInput("m_age", "Mother's age (years):",  
                              min = 15, max = 60, value = 30),
                  sliderInput("f_age", "Father's age (years):",  
                              min = 15, max = 60, value = 30),
                  sliderInput("m_hgt", "Mother's height (inches):",  
                              min = 54, max = 78, value = 64),
                  sliderInput("f_hgt", "Father's height (inches):",  
                              min = 54, max = 78, value = 70)
                ),
                
                mainPanel(
                  h3('Predicted birth weight'),
                  h4('Based on the data you have entered, the expected birth weight is'),
                  verbatimTextOutput("prediction")
                )
  )
))
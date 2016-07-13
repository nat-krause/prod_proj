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
                  verbatimTextOutput("prediction"),
                  br(),
                  br(),
                  br(),
                  br(),
                  h3(span('Documentation', style = "color:blue")),
                  div("Use the sliders at right to enter the age and height for the baby's parents. The estimated birth weight in pounds will update automatically.", style = "color:blue"),
                  br(),
                  div("The underlying data was collected for each new mother in a Child and Health Development Study. It comes from http://www.stat.berkeley.edu/users/statlabs/labs.html via the UsingR package. 726 observations were included to generate the model. Observations that did not include a valid value for all four variables were excluded.", style = "color:blue")
                )
  )
))

data(babies)
babies_clean <- subset(babies,ht!=99 & dht!=99 & age!=99 & dage!=99)
babies_clean$lbs <- babies_clean$age
b <- lm(wt~lbs+ht+dage+dht,data=babies_clean)
weight_predict <- function(age,ht,dage,dht) {(age*coef(b)[2]+ht*coef(b)[3]+dage*coef(b)[4]+dht*coef(b)[5]+coef(b)[1])/16}

shinyServer(
  function(input,output){
    output$m_hgt <- renderPrint({input$m_hgt})
    output$f_hgt <- renderPrint({input$f_hgt})
    output$m_age <- renderPrint({input$m_age})
    output$f_age <- renderPrint({input$f_age})
    output$prediction <- renderPrint({weight_predict(input$m_age,input$m_hgt,input$f_age,input$f_hgt)})
  }
)
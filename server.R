library(shiny)
library(UsingR)
data(galton)

fit <- lm(child~parent, data = galton)

shinyServer(

    function(input, output){
        output$mheight <- renderPrint({input$mheight})
        output$fheight <- renderPrint({input$fheight})
        #new = data.frame(parent = mean(c(input$mheight * 1.08 ,input$feight)))
        output$prediction <- renderPrint(
            {as.numeric(predict(fit, data.frame(parent = 0.5 *input$mheight * 1.08 + 0.5 * input$fheight)))})

        #output$prediction <- renderPrint({input$mheight + input$fheight})
    }
)

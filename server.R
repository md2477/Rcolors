
library(shiny)

shinyServer(
    function(input, output) {

        red <- reactive({
            input$red
        })
        
        green <- reactive({
            input$green
        })
        
        blue <- reactive({
            input$blue
        })
        
        rgbOut <- renderText({
            rgb(red(), green(), blue(), maxColorValue = 255)
        })
        
        output$rgb <- renderText({
            HTML(sprintf("<div height='200' width='200' style='background-color: %s'>hey</div>", rgbOut()))
            #HTML("hey")
        })
  
    }
)

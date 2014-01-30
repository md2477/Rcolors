
library(shiny)

shinyServer(
    function(input, output) {

        colorCode <- reactive({
            rgbValues <- as.raw(col2rgb(input$rColorSelected))
            colorCode <- sprintf("#%s%s%s", rgbValues[1], rgbValues[2], rgbValues[3])
        })
        
        output$colorSquare <- renderText({
            HTML(sprintf("<div style='height: 300px; width: 300px; background-color: %s'></div>", colorCode()))
        })
        
        output$rgbBreakdown <- renderText({
            HTML(sprintf("<h2>%s</h2>", colorCode()))
        })
  
    }
)

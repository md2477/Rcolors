
library(shiny)

shinyServer(
    function(input, output) {

        colorName <- reactive({
            input$rColorSelected
        })
        
        colorCode <- reactive({
            rgbValues <- as.raw(col2rgb(colorName()))
            colorCode <- sprintf("#%s%s%s", rgbValues[1], rgbValues[2], rgbValues[3])
        })
        
        output$colorBox <- renderText({
            HTML(sprintf("<div class='colorBox' style='background-color: %s;'><h2>%s</h2><h2>%s</h2></div>", colorCode(), colorName(), colorCode()))
        })
        
        output$rgbBreakdown <- renderText({
            HTML(sprintf("<h2>%s</h2>", colorCode()))
        })
  
    }
)

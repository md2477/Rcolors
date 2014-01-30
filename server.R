
library(shiny)

shinyServer(
    function(input, output) {

        
        output$rgb <- renderText({
            HTML(sprintf("<div height='200' width='200' style='background-color: %s'>hey</div>", rgbOut()))
            #HTML("hey")
        })
  
    }
)

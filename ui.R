
library(shiny)

shinyUI(
    pageWithSidebar(
  
        # Application title
        headerPanel("R Color Explorer"),
          
        # Sidebar with a slider input for number of observations
        sidebarPanel(
            
            selectInput(
                inputId = "rColorSelected",
                label   = "R colors",
                choices = as.list(colors())
                )
            
        ),
          
        # Show a plot of the generated distribution
        mainPanel(
            h2("This is the color you selected:"),
            htmlOutput("colorSquare"),
            htmlOutput("rgbBreakdown")
        )
    )
)

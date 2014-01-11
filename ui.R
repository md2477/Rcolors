
library(shiny)

shinyUI(
    pageWithSidebar(
  
        # Application title
        headerPanel("New Application"),
          
        # Sidebar with a slider input for number of observations
        sidebarPanel(
            sliderInput(
                "red",
                "Red",
                min = 0,
                max = 255,
                value = 0),
            
            sliderInput(
                "green",
                "Green",
                min = 0,
                max = 255,
                value = 0),
              
            sliderInput(
                "blue",
                "Blue",
                min = 0,
                max = 255,
                value = 0)
            
        ),
          
        # Show a plot of the generated distribution
        mainPanel(
            htmlOutput("rgb")            
        )
    )
)

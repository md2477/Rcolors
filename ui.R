
library(shiny)

shinyUI(
    pageWithSidebar(
  
        # Application title
        headerPanel("New Application"),
          
        # Sidebar with a slider input for number of observations
        sidebarPanel(
            
            selectInput(
                inputId = "rColors",
                label   = "R colors",
                choices = as.list(colors())
                )
            
        ),
          
        # Show a plot of the generated distribution
        mainPanel(
            htmlOutput("rgb")            
        )
    )
)

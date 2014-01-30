
library(shiny)

shinyUI(
    pageWithSidebar(
  
        # Application title
        headerPanel("R Color Explorer"),
          
        # Sidebar with a slider input for number of observations
        sidebarPanel(
            
            selectInput(
                inputId = "rColorSelected",
                label   = "Choose a color name:",
                choices = as.list(colors())
                ),
            
            h2("What can I use this for?"),
            
            h5("The colors listed in the dropdown menu above can be used in the color argument
                of any R function. For example, instead of"),
            
            code("plot(mtcars$wt, mtcars$mpg, col = '#5f9ea0'"),
            
            
            h5("...try this:"),
            
            code("plot(mtcars$wt, mtcars$mpg, col = 'cadetblue'"),
            
            h5("Using color names make it easier to remember your color scheme, instead of 
                always hunting through your code for the right hexadecimal value."),
            
            div(HTML("<br>This app was created by Mason DeCamillis.
                     <br>Code available at <a href='https://github.com/mdec/Rcolors' target='_blank'>https://github.com/mdec/Rcolors</a>.
                     <br>See more at <a href='http://www.showmeshiny.com' target='_blank'>showmeshiny.com</a> and follow <a href='http://www.twitter.com/showmeshiny' target='_blank'>@showmeshiny</a>."))
            
            
            
            
        ),
          
        # Show a plot of the generated distribution
        mainPanel(
            h2("This is the color you selected:"),
            htmlOutput("colorSquare"),
            htmlOutput("rgbBreakdown")
        )
    )
)

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Price predictor for Diamonds"),
    
    # Sidebar with options selectors
    sidebarLayout(
        sidebarPanel(
            helpText("This application is a predictor for the price of a diamond based on its characteristics."),
            h3(helpText("Select:")),
            numericInput("car", label = h4("Carats"), step = 0.01, value = 1.5),
            
            selectInput("col", label = h4("Color"),
                        choices = list("Unknown" = "*", "D" = "D", "E" = "E",
                                       "F" = "F", "G" ="G",
                                       "H" = "H", "I" = "I",
                                       "J" = "J")),
            selectInput("clar", label = h4("Clarity"),
                        choices = list("Unknown" = "*", "I1" = "I1", "SI2" = "SI2",
                                       "SI1" = "SI1", "VS2" = "VS2", "VS1" = "VS1",
                                       "VVS2" = "VVS2", "VVS1" = "VVS1", "IF" = "IF" ))
        ),
        
        # Show a plot with diamonds and regression line
        mainPanel(
            plotOutput("distPlot"),
            h4("Predicted value of this diamond is:"),
            h3(textOutput("result"))
        )
    )
))
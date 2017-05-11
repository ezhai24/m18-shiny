# UI for scatterplot

# Create a shinyUI with a fluidPage layout
shinyUI(fluidPage(
  
  sidebarLayout(
    sidebarPanel(
      # Add a numericInput to choose the number of observations
      numericInput("observations",
                   "Number of Observations",
                   value = 100,
                   min = 1,
                   max = 500),
      
      # Add a selectInput that allows you to select a color from a list of choices
      selectInput("color",
                  "Color",
                  choices = c("Purple" = "#7c43c6", "Yellow" = "#fff02b", "Green" = "#1abc45", "Pink" = "#ff93de"),
                  selected = "Purple")
    ),
    
    mainPanel(
      # Plot the output with the name "scatter"
      plotOutput("scatter")
    )
  )
  
))

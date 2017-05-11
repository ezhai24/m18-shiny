### Exercise 2 ###

library(shiny)
library(ggplot2)

# We'll look into these more next week: http://shiny.rstudio.com/gallery/widget-gallery.html 

# Create a shiny server that creates a scatterplot. 

# It should takes as an input the number of observations, and a color
# It should return a rendered plot
shinyServer(function(input, output) {
  # Save a 'scatter' property which is a renderPlot object (that renders a scatterplot)
  output$scatter <- renderPlot({
    # get input from ui.R
    num.dots <- input$observations
    dot.color <- input$color
    
    # generate dummy data
    data.set <- data.frame(x.values = rnorm(num.dots), y.values = rnorm(num.dots))
    
    ggplot(data = data.set) +
      geom_point(mapping = aes(x = x.values, y = y.values), color = dot.color)
  })
  
})
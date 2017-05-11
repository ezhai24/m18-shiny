# Function to build a scatterplot
library(ggplot2)

# Write your function to parameterize the following variables:
#   - Data to use
#   - Variable for the x axis
#   - Variable for the y axis
#   - Variable for the color
#   - Title of the plot (set a default of "Title")
#   - Label for the x axis (set a default of "X Title")
#   - Label for the y axis (set a default of "Y Title")
BuildScatter <- function(data.set, x.value, y.value, color.map, plot.title, x.label, y.label) {
  ggplot(data = data.set) +
    geom_point(mapping = aes(x = x.value, y = y.value, color = color.map)) +
    labs(title = plot.title, x = x.label, y = y.label)
}

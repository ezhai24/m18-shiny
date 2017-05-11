# Exercise 1: Loading functions

# Set your directory
setwd("~/Documents/University of Washington/Junior/Spring Quarter/Info 201/Classwork/m18-shiny/exercise-1")

# Source your BuildScatter.r script, exposing your BuildScatter function
source("./scripts/BuildScatter.r")

# Use your BuildScatter function to draw a well labeled ggplot scatterplot of the iris data
BuildScatter(iris, iris$Petal.Width, iris$Petal.Length, iris$Species, "Petal Width vs. Length of Different Iris Species", "Width", "Length")

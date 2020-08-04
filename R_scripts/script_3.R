#!/usr/bin/env Rscript
#
# R_scripts/script_3.R
# --------------------------------------------------------
# This script is a working file for this tutorial. You
# will need to edit this file to implement reviewer
# comments.
#
# You can run this script "individually" by 
# calling the `testStemAndHalo` function defined below.
#

library(ggplot2)

drawStemAndHalo <- function(canvas) {
  # Add a stem and halo to an existing ggplot2 context
  
  # read data
  outline <- read.csv('data/outline.csv', 
                      header=FALSE)
  stem <- data.frame(x=outline[[1]], y=outline[[2]])
  halo <- data.frame(x=outline[[3]], y=outline[[4]])
  
  # remove missing data
  stem <- stem[stem$x != -999,]
  
  # Plot data  
  canvas + 
    geom_path(data=stem, 
              aes(x=x,y=y),
              color='black',
              size=1) + 
    geom_path(data=halo, 
              aes(x=x, y=y),
              color='black',
              size=1)
  
}

testStemAndHalo <- function() {
  # Display just a stem and halo
  
  canvas <- ggplot(NULL) + 
    theme(axis.title=element_blank(),
          axis.text=element_blank(),
          axis.ticks=element_blank(),
          panel.background=element_blank(),
          panel.grid=element_blank())
  
  drawStemAndHalo(canvas)
}

# Solution
# drawStemAndHalo <- function(canvas) {
#   # Add a stem and halo to an existing ggplot2 context
#   
#   # read data
#   outline <- read.csv('data/outline.csv', 
#                       header=FALSE)
#   stem <- data.frame(x=outline[[1]], y=outline[[2]])
#   halo <- data.frame(x=outline[[3]], y=outline[[4]])
#   
#   # remove missing data
#   stem <- stem[stem$x != -999,]
#   
#   # Plot data  
#   canvas + 
#     geom_path(data=stem, 
#               aes(x=x,y=y),
#               color='black',
#               size=10) + 
#     geom_path(data=halo, 
#               aes(x=x, y=y),
#               color='black',
#               size=10)
#   
# }

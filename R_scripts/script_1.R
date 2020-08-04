#!/usr/bin/env Rscript
#
# R_scripts/script_1.R
# --------------------------------------------------------
# This script is a working file for this tutorial. You
# will need to edit this file to implement reviewer
# comments.
#
# You can run this script "individually" by 
# calling the `testPeach` function defined below.
#

library(ggplot2)

drawPeach <- function(canvas) {
  # Adds a peach body to an existing ggplot2 context
  
  # read in data
  peach <- read.csv(file = 'data/peach.csv', 
                    header = FALSE)
  names(peach) <- c('x', 'y')
  peach[nrow(peach) + 1,] <- peach[1,]
  
  # plot data
  canvas + 
    geom_polygon(
      data=peach,
      fill='peru', 
      color='black', 
      size=1, 
      aes(x=x, y=y))     
}


testPeach <- function() {
  # Displays just the peach body
  
  canvas <- ggplot(NULL) + 
    theme(axis.title=element_blank(),
          axis.text=element_blank(),
          axis.ticks=element_blank(),
          panel.background=element_blank(),
          panel.grid=element_blank())
  
  drawPeach(canvas)  
}

# Solution
# drawPeach <- function(canvas) {
#   # Adds a peach body to an existing ggplot2 context
# 
#   # read in data
#   peach <- read.csv(file = 'data/peach.csv',
#                     header = FALSE)
#   names(peach) <- c('x', 'y')
#   peach[nrow(peach) + 1,] <- peach[1,]
# 
#   # plot data
#   canvas +
#     geom_polygon(
#       data=peach,
#       fill=rgb(0.506, 0.0, 0.937),
#       color='black',
#       size=1,
#       aes(x=x, y=y))
# }

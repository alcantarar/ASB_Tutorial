#!/usr/bin/env Rscript
#
# R_scripts/script_2.R
# --------------------------------------------------------
# This script is a working file for this tutorial. You
# will need to edit this file to implement reviewer
# comments.
#
# You can run this script "individually" by 
# calling the `testLeaf` function defined below.
#

library(ggplot2)

drawLeaf <- function(canvas) {
  # Adds a leaf to an existing ggplot2 context
  
  # read in data
  leaf <- read.csv('data/leaf.csv', header=FALSE)
  names(leaf) <- c('x', 'y')
  leaf[nrow(leaf) + 1,] <- leaf[1,]
  
  # plot data
  canvas + geom_polygon(data=leaf,
                 fill='forestgreen', 
                 color='black', 
                 size=1, 
                 aes(x=x, y=y))  
}


testLeaf <- function() {
  # Plot just the leaf
  
  canvas <- ggplot(NULL) + 
    theme(axis.title=element_blank(),
          axis.text=element_blank(),
          axis.ticks=element_blank(),
          panel.background=element_blank(),
          panel.grid=element_blank())
  
  drawLeaf(canvas)
}

# Solution
# drawLeaf <- function(canvas) {
#   # Adds a leaf to an existing ggplot2 context
#
#   # read in data
#   leaf <- read.csv('data/leaf.csv', header=FALSE)
#   names(leaf) <- c('x', 'y')
#   leaf[nrow(leaf) + 1,] <- leaf[1,]
#   
#   # plot data
#   canvas + geom_polygon(data=leaf,
#                         fill=rgb(0.792, 0.647, 0.278), 
#                         color='black', 
#                         size=1, 
#                         aes(x=x, y=y))  
# }

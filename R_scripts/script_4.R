#!/usr/bin/env Rscript
#
# R_scripts/script_4.R
# --------------------------------------------------------
# This script is a working file for this tutorial. You
# will need to edit this file to implement reviewer
# comments.
#
# You can run this script "individually" by 
# calling the `testDrawASBLogo` function defined below.
#

library(ggplot2)

drawASBLogo <- function(canvas) {
  # Adds the ASB logo to an existing ggplot2 context
  
  # read in data
  logo <- read.csv('data/ASB.csv',
                   header=FALSE)
  names(logo) <- c('x', 'y')

  # plot data
  canvas + 
    geom_path(data=logo,
              aes(x=x,y=y),
              color='black', 
              size=6)
  
}

testDrawASBLogo <- function() {
  # Display just the ASB logo
  
  canvas <- ggplot(NULL) + 
    theme(axis.title=element_blank(),
          axis.text=element_blank(),
          axis.ticks=element_blank(),
          panel.background=element_blank(),
          panel.grid=element_blank())
  
  drawASBLogo(canvas)
  
}

# Solution
# drawASBLogo <- function(canvas) {
#   # read in data
#   logo <- read.csv('data/ASB.csv',
#                    header=FALSE)
#   names(logo) <- c('x', 'y')
# 
#   # plot data
#   canvas + 
#     geom_path(data=logo,
#               aes(x=x,y=y),
#               color='red', 
#               size=6)
# 
# }
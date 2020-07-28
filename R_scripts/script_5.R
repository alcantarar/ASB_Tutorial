#!/usr/bin/env Rscript
#
# R_scripts/script_5.R
# --------------------------------------------------------
# This script is a working file for this tutorial. You
# will need to edit this file to implement reviewer
# comments.
#
# You can run this script "individually" by 
# calling the `testDrawSubtitle` function defined below.
#

library(ggplot2)

drawSubtitle <- function(canvas) {
  # Add a subtitle to an existing ggplot2 context
  
  year <- format(Sys.Date(), '%Y')
  
  canvas +
    geom_text(label=year,
              aes(x=3, y=-3.5),
              color='black', 
              size=12)
}

testDrawSubtitle <- function() {
  # Display just the subtitle
  
  canvas <- ggplot(NULL) +
      theme(axis.title=element_blank(),
            axis.text=element_blank(),
            axis.ticks=element_blank(),
            panel.background=element_blank(),
            panel.grid=element_blank())
  
  drawSubtitle(canvas)
}

# Solution
# drawSubtitle <- function() {
#   
#   ggplot(data=halo, aes(x=2.5,y=-3.5)) + 
#     theme(axis.title=element_blank(),
#           axis.text=element_blank(),
#           axis.ticks=element_blank(),
#           panel.background=element_blank(),
#           panel.grid=element_blank()) +
#     geom_text(label='Reviewer 2 is the best',
#               aes(x=2.5, y=-3.5),
#               color='black', 
#               size=12)
# }
#!/usr/bin/env Rscript
# 
#   main_script.R
# 	---------------------------------------------------------
# 	This is the ASB tutorial master R script, the main 
# 	entry point for running this tutorial in R. You will 
# 	not need to modify this file.
# 
# 	Use "Source with Echo" to run this script in its 
#   entirety in RStudio.
#

# Install ggplot package if missing
if ('ggplot2' %in% rownames(installed.packages()) == F){
  install.packages('ggplot2')
} 

library(ggplot2)

# Import subscript objects
for (i in seq(1, 5)) {
  fn <- paste0('R_scripts/script_', i, '.R')
  source(fn)
}

canvas <- ggplot(NULL) + 
  theme(axis.title=element_blank(),
        axis.text=element_blank(),
        axis.ticks=element_blank(),
        panel.background=element_blank(),
        panel.grid=element_blank())

# Implement script_1.R
canvas <- drawPeach(canvas)

# Implement script_2.R
canvas <- drawLeaf(canvas)

# Implement script_3.R
canvas <- drawStemAndHalo(canvas)

# Implement script_4.R
canvas <- drawASBLogo(canvas)

# Implement script_5.R
canvas <- drawSubtitle(canvas)

canvas


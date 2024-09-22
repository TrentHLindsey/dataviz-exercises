################################################################
# Script Name: Plotting_Points_swim
# Author: Trent Lindsey
# GitHub:
# Date Created: 9/22/24
#
# Purpose: This script is meant to plot the points of the non-
#          aggregated data and compare it to the average
################################################################

################################################################
# Note: When sourcing script files, if you do not want objects
# available in this script, use the source() function along with
# the local = TRUE argument. By default, source() will make
# objects available in the current environment.

################################################################
# Load necessary libraries/source any function directories
# Example:
R.utils::sourceDirectory(here::here("src", "functions"))
library(ggplot2)
library(tidyverse)
library(dplyr)

################################################################
# source my orginal data
source(here::here("src", "data", "summarizing_swim_data.R"))
avg_top_dive <- readRDS(here::here("src", "data", "avg_top_dive.RDS"))

################################################################
# plot the scores of the top dive
top_dives_plot <- DIVE |>
  ggplot(mapping = aes(x = event, y = score)) +
  geom_point() +
  geom_point(mapping = aes(x = event, y = mean_score, colour = team), 
             data = avg_top_dive,
             shape = "square",
             size = 3)
################################################################
# ...

################################################################
# End of script

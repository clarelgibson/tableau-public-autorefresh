# Title:        Utils
# Project:      Tableau Public Auto-refresh
# Author:       Clare Gibson
# Date Created: 2023-04-25

# SUMMARY ######################################################################
# This script contains formulas needed to run the other scripts

# MAKE TEST DATA ###############################################################
# Function creates a df containing test data for the Tableau Public dashboard.
make_test_data <- function() {
  df <- data.frame(
    timestamp = Sys.time(),
    label = 1:10,
    value = rnorm(10)
  )
  
  return(df)
}

# GOOGLE AUTHENTICATION ########################################################
google_auth <- function() {
  require(googledrive)
  require(googlesheets4)
}
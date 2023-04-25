# Title:        Utils
# Project:      Tableau Public Auto-refresh
# Author:       Clare Gibson
# Date Created: 2023-04-25

# SUMMARY ######################################################################
# This script contains formulas needed to run the other scripts

# MAKE TEST DATA ###############################################################
# Function creates a df containing test data for the Tableau Public dashboard
make_test_data <- function() {
  df <- data.frame(
    timestamp = Sys.time(),
    label = 1:10,
    value = rnorm(10)
  )
  
  return(df)
}

# GOOGLE AUTHENTICATION ########################################################
# Function allows user to authenticate with Google Drive and Google Sheets
google_auth <- function() {
  require(googledrive)
  require(googlesheets4)
  
  drive_auth()
  gs4_auth(token = drive_token())
}

# CREATE DIRECTORY #############################################################
# Function creates a new directory for this project in Google Drive. Checks
# first for presence of directory with specified name. If exists, does not 
# create a new directory.
google_mkdir <- function(name) {
  require(googledrive)
  
  drive_mkdir(
    name = name,
    overwrite = TRUE
  )
}
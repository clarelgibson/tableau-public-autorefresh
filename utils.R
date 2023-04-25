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
make_gdrive_folder <- function(name) {
  require(googledrive)
  
  # Check if folder already exists (0 = FALSE, >0 = TRUE)
  dir_flg <- nrow(drive_find(name))
  
  if (dir_flg == 0) {
    drive_mkdir(name) %>% 
      drive_share_anyone()
    cat("Folder", name, "created successfully.")
  } else {
    cat("Folder", name, "already exists. No need to recreate.")
  }
}
  
# CREATE SHEET ###############################################################
# Creates a new Google spreadsheet file for this project in Google Drive.
# Checks first for presence of file with specified name. If exists, does not
# create a new file.
make_gdrive_sheet <- function(name, path) {
  require(googledrive)
    
  # Check if file already exists (0 = FALSE, >0 = TRUE)
  sheet_flg <- nrow(drive_find(name))
  
  if (sheet_flg == 0) {
    drive_create(
      name = name,
      path = path,
      type = "spreadsheet"
    )
    cat("Spreadsheet", name, "created successfully.")
  } else {
    cat("Spreadsheet", name, "already exists. No need to recreate.")
  }
}
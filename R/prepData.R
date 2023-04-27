# Title:        Prep Data
# Project:      Tableau Public Auto-refresh
# Author:       Clare Gibson
# Date Created: 2023-04-25

# SUMMARY ######################################################################
# This script creates and exports data needed for the project.

# SETUP ########################################################################
# > Packages ===================================================================
library(googlesheets4)

# > Scripts ====================================================================
source("./R/utils.R")

# > Variables ==================================================================
# Define a name for the Google Drive folder to be used for the project.
gdrive_dir <- "tableau-public-autorefresh"
gdrive_sheet <- paste0(gdrive_dir, "-data")

# GET DATA #####################################################################
df <- make_test_data()

# EXPORT DATA ##################################################################
# > Connect to Google ==========================================================
# Calling this function will open browser to complete authentication
google_auth()

# # > Make project folder ========================================================
# make_gdrive_folder(gdrive_dir)
# 
# # > Make google sheet file =====================================================
# make_gdrive_sheet(
#   name = gdrive_sheet,
#   path = gdrive_dir
# )
# 
# # > Store id of new file =======================================================
# gdrive_sheet_id <- as_dribble(gdrive_sheet)$id
# 
# # > Append data into sheet =====================================================
# sheet_write(
#   data = df,
#   ss = as_dribble(gdrive_sheet),
#   sheet = "Sheet1"
# )
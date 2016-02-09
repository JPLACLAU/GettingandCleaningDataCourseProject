
##################################################################
# Welcome to JPLACLAU 's script
# This script was made for the course project of the Coursera course
# " Getting and Cleaning data " given by John Hopkins university
# Date of the course: February 2016
##################################################################



##################################################################
## STEP 0 
# Downloading data and preparing the workspace

# Clean up workspace
rm(list=ls())

# First of all you should set your working directory
# where you wish this scrips downloads all the files and work
setwd(getwd())
path <- getwd()
path

# Packages needed for this script
# - data.table
# - plyr
# The next function checks if we have all the packages needed for this script
testin <- function(package){
        if (!package %in% installed.packages()) {   
                message( "Instalando ", package)
                install.packages(package)
                print("paquete instalado")}
        else {message(" El paquete ", package, " ya se encontraba instalado.")}}
testin("data.table")
testin("plyr")
packages <- c("data.table", "plyr")
sapply(packages, require, character.only = TRUE, quietly = TRUE)

# Downloading the data from the web
setInternet2(use = TRUE)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f <- "Dataset.zip"
if (!file.exists(path)) {
        dir.create(path)}
download.file(url, file.path(path, f))

# After runing these lines we should receive this message:
#-----------------------
# Content type 'application/zip' length 62556944 bytes (59.7 MB)
# downloaded 59.7 MB
#------------------------

# For unziping the file the software 7-Zip is required
# My 7-Zip is located on "C:\Program Files (x86)\7-Zip"
executable <- file.path("C:", "Program Files (x86)", "7-Zip", "7z.exe")
parameters <- "x"
cmd <- paste(paste0("\"", executable, "\""), parameters, paste0("\"", file.path(path, f), "\""))
system(cmd)

# After runing these lines we should receive this message:
#-----------------------
# Everything is Ok
#
# Folders: 4
# Files: 28
# Size:       282552783
# Compressed: 62556944
#------------------------

# Notice that all the unziped files are inside the subfolder " ~\UCI HAR Dataset\ "
Subpath <- file.path(path, "UCI HAR Dataset")
list.files(Subpath, recursive = TRUE)
##################################################################



##################################################################
## STEP 1
# Reading the subject files, activity files and merging them into a dataset

x_train       <- read.table(file.path(Subpath, "train", "X_train.txt"))
y_train       <- read.table(file.path(Subpath, "train", "y_train.txt"))
subject_train <- read.table(file.path(Subpath, "train", "subject_train.txt"))

x_test        <- read.table(file.path(Subpath, "test", "X_test.txt"))
y_test        <- read.table(file.path(Subpath, "test", "y_test.txt"))
subject_test  <- read.table(file.path(Subpath, "test", "subject_test.txt"))

x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)
##################################################################



##################################################################
## STEP 2
# Subsetings the mean and the standard deviation for each measurement
# With column names corrected

features <- read.table(file.path(Subpath, "features.txt"))
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

x_data <- x_data[, mean_and_std_features]
names(x_data) <- features[mean_and_std_features, 2]
##################################################################



##################################################################
## STEP 3
# Naming the activities in the data set.
activities <- read.table(file.path(Subpath, "activity_labels.txt"))
y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "Activity"
##################################################################



##################################################################
## STEP 4
# Labeling the dataset with desccriptive variable names 
# and merging the data into a single data set

names(subject_data) <- "subject"

all_data <- cbind(x_data, y_data, subject_data)
##################################################################



##################################################################
## STEP 5
# Creating an independent data set with the average of each variable of each activity and subject

subjects_averages_data <- ddply(all_data, .(subject, Activity), function(x) colMeans(x[, 1:66]))

write.table(subjects_averages_data, "subjects_averages_data.txt", row.name=FALSE)
##################################################################



##################################################################
# Thank you for reviewing! - JP
##################################################################

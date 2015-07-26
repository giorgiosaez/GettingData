#Getting and Cleaning Data
In this repository is the code written for the Getting and Cleaning Data Coursera Project through Johns Hopkins University.

##Course Project

Download "run_analysis.R" then Open RStudio or R console an type
source("run_analysis.R")

The code in run_analysis.R does the next:
1.Download the files needed.

2.Merges the training and the test sets to create one data set.

3.Extracts the measurements on the mean and standard deviation for each measurement.

4.Uses descriptive activity names to name the activities in the data set

5.Labels the data set with descriptive variable names.

6.At the end creates a tidy data set with the average of each variable for each activity and each subject.

Use tidyDS <- read.table("tidyDataSetWithAverages.txt") to read the data.
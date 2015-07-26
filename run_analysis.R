#"You should create one R script called run_analysis.R that does the following. 
wd <- "~//R//GettingData//"
if (!file.exists(wd)) {dir.create(wd) }
library(curl)
setwd(wd)
destfile = "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists(destfile)) {
    url = ("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
    download.file(url, destfile = destfile, method = "curl")
    unzip(zipfile = "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
}
#Merges the training and the test sets to create one data set.
subject <- rbind(read.table("UCI HAR Dataset/train/subject_train.txt"), read.table("UCI HAR Dataset/test/subject_test.txt"))
X <- rbind(read.table("UCI HAR Dataset/train/X_train.txt"), read.table("UCI HAR Dataset/test/X_test.txt"))
Y <- rbind(read.table("UCI HAR Dataset/train/Y_train.txt"), read.table("UCI HAR Dataset/test/Y_test.txt"))

#Extracts only the measurements on the mean and standard deviation for each measurement. 

features <- read.table("UCI HAR Dataset/features.txt")
index <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X1 <- X[, index]
names(X1) <- gsub("\\(|\\)", "", features[index, 2])

#Uses descriptive activity names to name the activities in the data set

activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities[, 2] =  tolower(as.character(activities[, 2]))
Y[,1] = activities[Y[,1], 2]
names(Y) <- "activity"

#Appropriately labels the data set with descriptive variable names. 

names(subject) <- "Subject"
cleaned <- cbind(subject, Y, X1)
write.table(cleaned, "WearablesdataSet.txt", row.names = FALSE)


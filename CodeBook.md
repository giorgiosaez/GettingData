#Course Project Code Book
Source of the original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The attached R script (run_analysis.R) performs the following to clean up the data:

Merges the training and test sets to create one data set, for example 
train/X_train.txt with test/X_test.txt

Reads features.txt and extracts only the measurements on the mean and standard deviation for each measurement.

Reads activity_labels.txt and applies descriptive activity names to name the activities in the data set like: walking, walking_upstairs, walking_downstairs, sitting, standing and laying

The script also appropriately labels the data set with descriptive names: all feature names (attributes) and activity names are converted to lower case, underscores and brackets () are removed. Then it merges the data frame containing features and activity labels and subject IDs. The result is saved as WearabledataSet.txt, a data frame where the first column contains subject IDs, the second column activity names, and the last 66 columns are measurements. Subject IDs are integers between 1 and 30. The names of the attributes are similar to the following:

tbodyacc-mean-x 

tbodyacc-std-y 

tbodyacc-std-z 

tgravityacc-mean-z

Finally, the script creates a 2nd, independent tidy data set with the average of each measurement for each activity and each subject. The result is saved as tidyDataSetWithAverages.txt.
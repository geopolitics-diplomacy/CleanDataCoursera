# CleanDataCoursera

Getting and Cleaning Data - Coursera Project

This is the course project for Getting and Cleaning Data course on Coursera. Code is written in run_analysis.R. Following are the steps this scripts uses to clean the required information:

Download the dataset if it does not already exist in the working directory.

Check if zip has already been downloaded in working directory.

List all the files of UCI HAR Dataset folder The files that will be used to load data.

Load activity, subject and feature info. 
Read data from the files into the variables.
Read the Activity files.
Read the Subject files.
Read Features files.

Merges the training and the test sets to create one data set.
Concatenate the data tables by rows.

set names to variables.
Merge columns to get the data frame Data for all data.
Extracts only the measurements on the mean and standard deviation for each measurement.

Subset Name of Features by measurements on the mean and standard deviation.
Subset the data frame Data by selected names of Features.
Uses descriptive activity names to name the activities in the data set.

Read descriptive activity names from activity_labels.txt
Factorize variable activity in the data frame Data using descriptive activity names.
Appropriately labels the data set with descriptive variable names.

Creates a independent tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.

Final output file is tidydata.txt


Major Labels
  Subject - The ID of the test subject using the wearable tracker
  Activity - The type of activity performed when measuring performance
  
Measurements
  tBodyAccMeanX
  tBodyAccMeanY
  tBodyAccMeanZ
  tBodyAccStdX
  tBodyAccStdY
  tBodyAccStdZ
  tGravityAccMeanX
  tGravityAccMeanY
  tGravityAccMeanZ
  tGravityAccStdX
  tGravityAccStdY
  tGravityAccStdZ
  tBodyAccJerkMeanX
  tBodyAccJerkMeanY
  tBodyAccJerkMeanZ
  tBodyAccJerkStdX
  tBodyAccJerkStdY
  tBodyAccJerkStdZ
  tBodyGyroMeanX
  tBodyGyroMeanY
  tBodyGyroMeanZ
  tBodyGyroStdX
  tBodyGyroStdY
  tBodyGyroStdZ
  tBodyGyroJerkMeanX
  tBodyGyroJerkMeanY
  tBodyGyroJerkMeanZ
  tBodyGyroJerkStdX
  tBodyGyroJerkStdY
  tBodyGyroJerkStdZ
  tBodyAccMagMean
  tBodyAccMagStd
  tGravityAccMagMean
  tGravityAccMagStd
  tBodyAccJerkMagMean
  tBodyAccJerkMagStd
  tBodyGyroMagMean
  tBodyGyroMagStd
  tBodyGyroJerkMagMean
  tBodyGyroJerkMagStd
  fBodyAccMeanX
  fBodyAccMeanY
  fBodyAccMeanZ
  fBodyAccStdX
  fBodyAccStdY
  fBodyAccStdZ
  fBodyAccMeanFreqX
  fBodyAccMeanFreqY
  fBodyAccMeanFreqZ
  fBodyAccJerkMeanX
  fBodyAccJerkMeanY
  fBodyAccJerkMeanZ
  fBodyAccJerkStdX
  fBodyAccJerkStdY
  fBodyAccJerkStdZ
  fBodyAccJerkMeanFreqX
  fBodyAccJerkMeanFreqY
  fBodyAccJerkMeanFreqZ
  fBodyGyroMeanX
  fBodyGyroMeanY
  fBodyGyroMeanZ
  fBodyGyroStdX
  fBodyGyroStdY
  fBodyGyroStdZ
  fBodyGyroMeanFreqX
  fBodyGyroMeanFreqY
  fBodyGyroMeanFreqZ
  fBodyAccMagMean
  fBodyAccMagStd
  fBodyAccMagMeanFreq
  fBodyBodyAccJerkMagMean
  fBodyBodyAccJerkMagStd
  fBodyBodyAccJerkMagMeanFreq
  fBodyBodyGyroMagMean
  fBodyBodyGyroMagStd
  fBodyBodyGyroMagMeanFreq
  fBodyBodyGyroJerkMagMean
  fBodyBodyGyroJerkMagStd
  fBodyBodyGyroJerkMagMeanFreq
  
Activity Labels
  WALKING (value 1): Test subject was walking during measurements
  WALKING_UPSTAIRS (value 2): Test subject was walking up the stairs during measurements 
  WALKING_DOWNSTAIRS (value 3): Test subject was walking down the stairs during measurements
  SITTING (value 4): Test subject was sitting during the measurements
  STANDING (value 5): Test subject was standing during the measurements
  LAYING (value 6): Test subject was laying down (resting position) during the measurements

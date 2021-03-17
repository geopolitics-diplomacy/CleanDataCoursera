##Load libraries required for the script
library(plyr)
library(downloader)

## Check if files already exists on the repo, if not we download them and unzip them.
if(!file.exists("./CleanDataCoursera")){dir.create("./CleanDataCoursera")
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "./CleanDataCoursera")
unzip(zipfile = "./CleanDataCoursera/Dataset.zip", exdir="./CleanDataCoursera")
}
##Save the path where the files are and make a list of all files available
path_rf <- file.path("C:/Users/Cecy/Documents/R Projects/CleanDataCoursera/UCI HAR Dataset")
files <- list.files(path_rf, recursive = TRUE)

##Read Activity Data
ActivityTest <- read.table(file.path(path_rf, "test", "y_test.txt"), header = FALSE)
ActivityTrain <- read.table(file.path(path_rf, "train", "y_train.txt"), header = FALSE)

##Read Subject Data
SubjectTest <- read.table(file.path(path_rf, "test", "subject_test.txt"), header = FALSE)
SubjectTrain <- read.table(file.path(path_rf, "train", "subject_train.txt"), header = FALSE)

##Read Feature Data
FeatureTest <- read.table(file.path(path_rf, "test", "X_test.txt"), header = FALSE)
FeatureTrain <- read.table(file.path(path_rf, "train", "X_train.txt"), header = FALSE)

##Concatenate Data based on main variable(Activity, Subject, Feature)
ActivityData <- rbind(ActivityTrain, ActivityTest)
SubjectData <- rbind(SubjectTrain, SubjectTest)
FeatureData <- rbind(FeatureTrain, FeatureTest)

##Label Data 
names(SubjectData) <- c("Subject")
names(ActivityData) <- c("Activity")
FeatureNames <- read.table(file.path(path_rf, "features.txt"), head = FALSE)
names(FeatureData) <- FeatureNames$V2

#Merge data
CombinedData <- cbind(SubjectData, ActivityData)
Data <- cbind(FeatureData, CombinedData)

##Extract mean and std for measurements
##Subset data to be able to use mean() and std() on the names data
FeatureNamesSubdata <- FeatureNames$V2[grep("mean\\(\\)|std\\(\\)", FeatureNames$V2)]
ChosenNames <- c(as.character(FeatureNamesSubdata), "Subject", "Activity")
Data <- subset(Data, select=ChosenNames)

##Further label all activities listed
ActivityLables <- read.table(file.path(path_rf, "activity_labels.txt"), header = FALSE)
Data$Activity<- factor(Data$Activity,labels = ActivityLables[,2])
names(Data) <- gsub("^t", "Time", names(Data))
names(Data) <- gsub("^f", "Frequency", names(Data))
names(Data) <- gsub("Acc", "Accelerometer", names(Data))
names(Data) <- gsub("Gryo", "Gyroscope", names(Data))
names(Data) <- gsub("Mag", "Magnitude", names(Data))
names(Data) <- gsub("BodyBody", "Body", names(Data))

##Create Tidy Dataset
TidyData <- aggregate(. ~Subject + Activity, Data, mean)
TidyData <- TidyData[order(TidyData$Subject, TidyData$Activity), ]
write.table(TidyData, file = "tidydata.txt", row.name=FALSE)

##Display summary of .txt created
summary(TidyData)

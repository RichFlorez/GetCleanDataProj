## Coursera 'Getting & Cleaning Data' Course Project
## Rich Florez 7/24/2016

## Note to use plyr package
library(plyr)

## Set working directory where the data is stored
setwd("~/datasciencecoursera/UCI HAR Dataset/")

## Read all relevant training and subject tables from the datasets stored in the working directory
X_train <- read.table("train/X_train.txt")
Y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")
X_test <- read.table("test/X_test.txt")
Y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

## Combine the X, Y, and subject datasets respectively 
X_data <- rbind(X_train, X_test)
Y_data <- rbind(Y_train, Y_test)
subject_data <- rbind(subject_train, subject_test)

## Read the features table
features <- read.table("features.txt")

## Pull only the columns with mean() or std() within them
mean_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

## Subset the columns
X_data <- X_data[, mean_std_features]

## Change column names
names(X_data) <- features[mean_std_features, 2]

## Read the activity_labels table
activity_labels <- read.table("activity_labels.txt")

## Change activity_labels names
Y_data[, 1] <- activity_labels[Y_data[, 1], 2]

## Change column names
names(Y_data) <- "activity"

## Change column names
names(subject_data) <- "subject"

## Combine the  subject datasets 
comb_data <- cbind(X_data, Y_data, subject_data)

## Create results_data dataset using the averages for the 1st 66 columns
results_data <- ddply(comb_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

## Create the results_data.txt table in the working directory for analysis
write.table(results_data, "results_data.txt", row.name=FALSE)

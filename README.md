# Coursera 'Getting &amp; Cleaning Data' Course Project


# Repo Summary

The data set being used is located at the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Is represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The purpose of the script within this repo is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The following steps are taken to achieve these objectives:

1. Merge the training and the test sets to create one dataset.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the dataset with descriptive variable names.
5. From the dataset in step 4, create a second, independent tidy dataset with the average of each variable for each activity and each subject.

# Repo Files

readme.md       - Summary and overview of the contents of this repository

codebook.md     - The variables and summaries calculated, along with units, and any other relevant information

run_analysis.R  - RScript/code for the data analysis

resultsdata.txt - Data output/results of the analysis

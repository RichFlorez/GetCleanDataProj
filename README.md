# Coursera 'Getting &amp; Cleaning Data' Course Project


# Repo Summary

The data set being used is located at the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Is represents collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The purpose of the script within this repo is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The following steps are taken to achieve these objectives:

1. Mergesthetrainingandthetestsetstocreateonedataset.
2. Extractsonlythemeasurementsonthemeanandstandarddeviationforeachmeasurement.
3. Usesdescriptiveactivitynamestonametheactivitiesinthedataset
4. Appropriatelylabelsthedatasetwithdescriptivevariablenames.
5. Fromthedatasetinstep4,createsasecond,independenttidydatasetwiththeaverageofeachvariableforeachactivityandeachsubject.

# Repo Files

readme.md       - Summary and overview of the contents of this repository

codebook.md     - The variables and summaries calculated, along with units, and any other relevant information

run_analysis.R  - RScript/code for the data analysis

resultsdata.txt - Data output/results of the analysis

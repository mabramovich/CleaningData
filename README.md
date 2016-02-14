# CleaningData
Michael Abramovich

This is a Readme file for the Coursera "Getting and Cleaning Data" class.

The run_analysis.R script here cleans the wearable fitness data set available at:
 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script loads in the training and test data sets from a locally downloaded version of the data.
 It merges the training and test data sets (appending the bottom of one to the other) and adds
 subjectIDs (the subjects on whom data was collected) and activities the subjects were doing as
 they were being measured to the data set. The training and test data sets contain 560 measurements
 related to movement: of these, the clean data set contains only the measurements associated with
 mean and standard deviations.
 
There is only one script to run, run_analysis.R. The script creates two data sets:
	-cleanData.txt, the clean data set containing only means and averages
	-averages.txt, the clean data set which summarizes measurements by subject and activity
# CleaningData
Michael Abramovich

This is a code book file for the Coursera "Getting and Cleaning Data" class.

The run_analysis.R script here cleans the wearable fitness data set available at:
 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
The following steps were taken to create the clean data set:
	-SubjectIDs (subject_train and subject_test) were appended to the main data sets (X_train) and (X_test)
	-The activity codes (y_train and y_test) were appended to the main data sets
	-A column was added to each of the training and test data sets indicating which set data was from (originalDataSet column)
	-Column headers were loaded from the features file and added to the training and test data frams
	-The training (X_train) and test (X_test) were merged (stacked on top of each other) to create one data set
	-A grep search on "mean()" and "std()" was used to extract only measurements pertaining to means and standard deviations
		for the final data set (descriptive columns with subjectID, activity, and originalDataSet were also retained)
	-Activity codes were replaced with activity labels according to the activity_labels file
 
Variables in the clean data set (cleanData.txt) are as follows:
 
subjectID							ID number of the subject taking the experiment (#1-30)
Activity							Activity subjects were performing when measured (as per activity_labels.txt)
originalDataSet						The original data set (testing or train) the measurements were pulled from


tBodyAcc-mean()-X					Time domain and frequency domain measurements of means and standard deviations in the study
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()

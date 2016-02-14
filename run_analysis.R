#Getting and Cleaning Data Assignment
#Michael Abramovich
#This script cleans the wearable fitness data set. See the readme and markdown
# files for more information

library(plyr)

#Load training and test data
train_data <- read.table("./train/X_train.txt", sep = "", header = FALSE)
test_data <- read.table("./test/X_test.txt", sep = "", header = FALSE)

#Load headers to tables (which is the 'features' file)
headers <- read.table("./features.txt", sep = "", header = FALSE, stringsAsFactors = FALSE)

#Load subject IDs
subject_IDs_train <- read.table("./train/subject_train.txt", sep = "", header = FALSE)
subject_IDs_test <- read.table("./test/subject_test.txt", sep = "", header = FALSE)

#Get activity labels
activity_labels <- read.table("./activity_labels.txt", sep = "", header = FALSE) 

#Get activity codes
train_codes <- read.table("./train/y_train.txt", sep = "", header = FALSE)
test_codes <- read.table("./test/y_test.txt", sep = "", header = FALSE)

#Append subject IDs and activity codes to training and test data sets, and mark
# the original data set that the data came from
train <- cbind(subject_IDs_train, train_codes, train_data)
test <- cbind(subject_IDs_test, test_codes, test_data)

names(train) <- c("subjectID", "Activity", headers[,2])
names(test) <- c("subjectID", "Activity", headers[,2])

train$originalDataSet <- rep("train", nrow(train))
test$originalDataSet <- rep("test", nrow(test))

#Join the training and test data sets
join <- rbind(train, test)

#Replace activity labels with activity descriptions
join$Activity <- factor(join$Activity, levels = activity_labels$V1, labels = activity_labels$V2)

#Write clean data set with only means and standard deviations
means_stds <- join[, c("subjectID", "Activity", "originalDataSet", grep("mean\\(\\)|std\\(\\)", names(join), value = TRUE))]
write.table(means_stds, file = "./cleanData.txt", quote = FALSE, sep = " ", row.names = FALSE)

#Summarize averages by subject and activity
averages <- ddply(means_stds, .(subjectID, Activity), numcolwise(mean))
write.table(averages, file = "./averages.txt", quote = FALSE, sep = " ", row.names = FALSE)
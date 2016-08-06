##reading first the test data
subjectTest <- read.table("./test/subject_test.txt")
variableData <- read.table("./test/X_test.txt")
activityType <- read.table("./test/y_test.txt")
## combinig the test dataset
testData <- cbind(subjectTest, variableData, activityType)
##Then reading the train data
subjectTest <- read.table("./train/subject_train.txt")
variableData <- read.table("./train/X_train.txt")
activityType <- read.table("./train/y_train.txt")
## combinig the train dataset
trainData <- cbind(subjectTest, variableData, activityType)
## combining the two data sets
theDataSet <- rbind(testData, trainData)
## we will read the names of the feature list and combining it with the subject no. at the beginnig and activity at the end
featuresNames <- read.table("./features.txt")
featuresNames <- as.vector(featuresNames[[2]])
featuresNames <- c("subject", featuresNames, "activity")
## we will make all the names in lower case 
featuresNames <- tolower(featuresNames)
## We will extract the measurements on the mean and standard deviation for each measurement but first we need to konw the index of these columns 
index <- grep(pattern = "mean[(]|std[(]", x = featuresNames)
## we extract the needed variables(mean and std)
theDataSetMeanStd <- theDataSet[,c(1,index,563)]
## Using descriptive activity names to name the activities in the data set 
  ## First Reading the activity_labels.txt  //we may also use Mutate function from dplyr package
activityLabels <- read.table("./activity_labels.txt")
activityLabels <- as.vector(activityLabels[[2]])
  ## Second changing the value of the activityLabel variable in the dataSet(the last variable)
theLastColIndex <- ncol(theDataSetMeanStd)
theDataSetMeanStd[,theLastColIndex] <- sapply(theDataSetMeanStd[,theLastColIndex], function(el) activityLabels[el])
## Labeling the data set with descriptive variable names
descriptiveNames <- featuresNames[c(1,index,563)]
  ## Removing any non alphanumeric characters
descriptiveNames <- gsub("[^[:alnum:]]", "", descriptiveNames)
names(theDataSetMeanStd) <- descriptiveNames
##independent tidy data set with the average of each variable for each activity and each subject.
summaryData <- aggregate( theDataSetMeanStd[,2:(theLastColIndex-1)], by = list(subject = theDataSetMeanStd$subject, activity = theDataSetMeanStd$activity), FUN = mean)
##writing the dataSet
write.table(summaryData, "finalData.txt", row.names = F)
#Getting and Cleaning Data Course Project
````

One of the most exciting areas in all of data science right now is wearable computing - see for example this 
article. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to 
attract new users. The data linked to from the course website represent data collected from the 
accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the
data was obtained:

````

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

````
Here are the data for the project:
````

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#run_analysis.R script
````
**This script assumes that you have downloaded the data from the link above and unzipped it.
**This script also assumed you have used setwd() function to make the dataset folder the working directory
````
STEP 1: Merges the training and the test sets to create one data set.
````
1. The script reads the test data from the test folder
	1.1. It reads the subject data from "subject_test.txt" using read.table.
	1.2. It reads the variables data from "X_test.txt" using read.table.
	1.3. It reads the label data from "y_test.txt" using read.table.
	1.4. Combines the 3 tables using cbind.

2. By the same way, it reads the train data from the train folder.

3. Then Combining both datasets using rbind().

4. It reads the names of the features variables from "features.txt" and forms a vector by combining the read 
	names with the subject at the beginning and activity at the end using c(). Then, we make all characters
	lowercase using tolower() .
````

STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement.

````
5. to extract the measurements on the mean and standard deviation we need to know the index of these columns.
	5.1. We get the indices of these columns using grep() and passing the featuresName (from step 4) to 
	the function.
	5.2. We extract the needed variables(mean and std).
````	 

STEP 3: Using descriptive activity names to name the activities in the data set.
````
6. 
	6.1. Reading the activity_labels.txt and making a vector of activities names.  
	6.2. Changing the value of the activity variable in the dataSet(which is found in the last column) by using 
	a function that returns the activity name by sending to it the activity number. 
````

STEP 4: Appropriately labels the data set with descriptive variable names.
````
7. After subsetting the feature names to get the names of the mean and std columns we remove the nonaplhanumeric 
   characters.
````
STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable
	for each activity and each subject.
````
8.By using aggregate function. we calculate the mean for each variable by assigning a list of(subject, activity)
   to the by argument and mean to FUN argument.(by the way you can use melting and dcast functions from reshape2 
   package to do the required summary statistics)

9. Using write.table the output dataset with name "finalData.txt" is generated. 

````
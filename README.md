## cleaningDataProject

#Introduction

The purpose of the project is to submit the course project for Getting and Cleaning Data with
the  Human Activity Recognition database.  The data linked to from the course website represent
data collected from the accelerometers from the Samsung Galaxy S smartphone. 

The link to the source is below.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#The Assignment

The assignment was to clean and create a tidy dataset from the given data
    *write a script run_analysis.R that does the following tasks
   	*Merge the training and the test sets to create one data set.
    	*Extract only the measurements on the mean and standard deviation for each measurement. 
    	*Use descriptive activity names to name the activities in the data set
    	*Appropriately label the data set with descriptive variable names. 
    	*create a second, independent tidy data set with the average of each variable for each activity and each subject.
    *write a readme.md document
    *write codebook describing the variables and data of the tidyData.txt


#Versions Used

 R version 3.1.2 (2014-10-31) Platform: x86_64-w64-mingw32/x64 (64-bit)

#packages used

 dplyr_0.4.1  
 data.table 1.9.4 



#The Method run_analysis.R

1.First downloaded the file on the computer in data folder and changed the working directory to the data folder.
unziped files, read the files, read the readMe to get an idea what the files have and how to connect them.
2. To merge test and train data sets,  
	*assigned column names from features column V2 to XTRain
	*rbind Xtest / Xtrain, Ytest/ Ytrain , subjectTest/ subjectTrain
	*changed column names for mergedSubjectTestTrain as "subject"
	*changed column names for mergedYTestTrain as "Lable"
	*changed column names for activityLables as "Lable" for V1 and "Activity" for V2 (I changed the column names 
	so that I can merge the activity names easily by the common variable Lable and eliminate the third step 
	of requirment - use descriptive activity names)
	*cbind the mergedXtestTrain, mergedYtestTrain and mergedSubjectTestTrain to mergedData
	*merged mergedData to activityLables by the common column Lable to finalData.
3.selceted column only with mean and std , subject, activity .
4.replaced the column names to descriptive names acc -Accelerometer, Mag -Magnitude and Gyro -Gyroscope.
5.get the average for each activity and subject and writes the tidy data into a text file tidyData.txt 

#codebook.md
 The code book has the description of all the variable of raw data that was used and also of the tidyData.txt.
 The raw data variable taken are from the data provided for the assignment.



	




 library(dplyr)
 library(data.table)
#changed working directory to data folder where i have downloaded the data
# reading files
	Xtest <- read.table("UCI HAR Dataset/test/X_test.txt", as.is= TRUE) 
	Ytest <- read.table("UCI HAR Dataset/test/Y_test.txt", as.is= TRUE) 
	subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", as.is= TRUE)
	features <- read.table("UCI HAR Dataset/features.txt", as.is= TRUE)
	activityLables <- read.table("UCI HAR Dataset/activity_labels.txt", as.is= TRUE)

#merge features column V2 to Xtest  data
	names(Xtest) <- features$V2
 
# read files from train data set
	Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt", as.is= TRUE) 
	Ytrain <- read.table("UCI HAR Dataset/train/Y_train.txt", as.is= TRUE)
	subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", as.is= TRUE)

# assign colnames to Xtrain data table with the features col V2
	names(Xtrain) <- features$V2 

# rbind both the data tables xtest and xtrain with modified col names

	mergedXtestTrain <- rbind(Xtest, Xtrain)

# rbind both the data tables ytest and ytrain with modified col names


	mergedYtestTrain <- rbind(Ytest, Ytrain)

# rbind both the data tables subjectTest and subjectTrain with modified col names


	mergedSubjectTestTrain <- rbind(subjectTest, subjectTrain)

# changed the column names of subject, ytestTrain and activityLables
	names(mergedSubjectTestTrain) <- "subject"
	names(mergedYtestTrain) <- "Lable"
#changed the column names so that I can merge the activity names easily by the 
#common variable Lable and eliminate the third step of requirment - use descriptive activity names)

	names(activityLables) <- c( "Lable" , "Activity")
	mergedData <- cbind(mergedXtestTrain, mergedYtestTrain,mergedSubjectTestTrain)
	finalData <- merge(mergedData , activityLables, by = "Lable")


# Column names are invalid characters so forcing the names to make the column names 
# valid and then selecting the columns with mean and standard deviation only.
	valid_column_names <- make.names(names=names(finalData), unique=TRUE, allow_ = TRUE)
	names(finalData) <- valid_column_names
	meanStdData <- select(finalData, contains("mean"), contains("std"), subject, Activity)

# replacing column names with describtive names

	names(meanStdData) <- gsub("Acc", "Accelerometer", names(meanStdData))
	names(meanStdData) <- gsub("Mag", "Magnitude", names(meanStdData))
	names(meanStdData) <- gsub("Gyro", "Gyroscope", names(meanStdData))
	names(meanStdData) <- gsub("BodyBody", "Body", names(meanStdData))


# getting average for each activity and subject and writes the data into a text file.
	AverageTidyData<-aggregate(. ~subject + Activity, meanStdData, mean)
	write.table(AverageTidyData, file = "tidyData.txt", row.name= FALSE)
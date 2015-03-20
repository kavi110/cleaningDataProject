##CodeBook

The tidyData.txt file contains the tidy data after cleaning the raw data given by the the course website represent data collected from the 
accelerometers from the Samsung Galaxy S smartphone.  

## Variables from the tidyData.txt


#Subject 

A numeric identifier for the subject of the study from 1 to 30

#Activity

There are 6 activities that the subjects did when readings were recorded.
	 *Walking
	 *Walking upstairs
 
	 *Walking downstairs

	 *Sitting
	 *Standing
 
	 *Laying

#Values 

The values summary is from the source of the raw dataset given . 
The mean and standard deviation for all the readings have been used and averages according to the subject and the activity.


The features selected for this database come from the accelerometer and gyroscope 
3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time)
 were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and
 a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals
 (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The parts of variable names in the original data file were expanded to be more readable.
like "Acc" -> "Acceleration", "Mag" -> "Magnitude" and "Gyro" -> "Gyroscope". 
Also "BodyBody" has been cut short to "Body".


NB: This codebook has details sourced from information at
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# "UCI Machine Learning Repository") 

# Human Activity Recognition Using Smartphones Tidy Data Set  #

## Sources: ##
Data were obtained from:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  "Data")

The original source:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy.

activityrecognition '@' smartlab.ws

www.smartlab.ws 

## Data Set Information ##

Experiments were carried out with 30 volunteers with 21 randomly assigned to a training group and 9 to a test group. Each volunteer performed a number of activities

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

Using the smartphone's embedded accelerometer, measurements were made on 561 variables as listed in the features.txt file found in this repository.

Of these 561 variables, 79 are mean or standard deviation measurements chosen since they had the words "mean" or "std" in their original attribute names. The mean of each of these variables has been calculated for each subject and activity; resulting in 180 measurements for each variable.

## Variable Information ##

 - activity.id                  	 Factor w/ 6 levels WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
-  subject.id                   	 Factor w/ 30 levels 1, 2, 3, ..., 30
-  tBodyAcc.mean.X              	180 mean measurements
-  tBodyAcc.mean.Y              	180 mean measurements
-  tBodyAcc.mean.Z              	180 mean measurements
-  tBodyAcc.std.X               	180 mean measurements
-  tBodyAcc.std.Y               	180 mean measurements
-  tBodyAcc.std.Z               	180 mean measurements
-  tGravityAcc.mean.X           	180 mean measurements
-  tGravityAcc.mean.Y           	180 mean measurements
-  tGravityAcc.mean.Z           	180 mean measurements
-  tGravityAcc.std.X            	180 mean measurements
-  tGravityAcc.std.Y            	180 mean measurements
-  tGravityAcc.std.Z            	180 mean measurements
-  tBodyAccJerk.mean.X          	180 mean measurements
-  tBodyAccJerk.mean.Y          	180 mean measurements
-  tBodyAccJerk.mean.Z          	180 mean measurements
-  tBodyAccJerk.std.X           	180 mean measurements
-  tBodyAccJerk.std.Y           	180 mean measurements
-  tBodyAccJerk.std.Z           	180 mean measurements
-  tBodyGyro.mean.X             	180 mean measurements
-  tBodyGyro.mean.Y             	180 mean measurements
-  tBodyGyro.mean.Z             	180 mean measurements
-  tBodyGyro.std.X              	180 mean measurements
-  tBodyGyro.std.Y              	180 mean measurements
-  tBodyGyro.std.Z              	180 mean measurements
-  tBodyGyroJerk.mean.X         	180 mean measurements
-  tBodyGyroJerk.mean.Y         	180 mean measurements
-  tBodyGyroJerk.mean.Z         	180 mean measurements
-  tBodyGyroJerk.std.X          	180 mean measurements
-  tBodyGyroJerk.std.Y          	180 mean measurements
-  tBodyGyroJerk.std.Z          	180 mean measurements
-  tBodyAccMag.mean             	180 mean measurements
-  tBodyAccMag.std              	180 mean measurements
-  tGravityAccMag.mean          	180 mean measurements
-  tGravityAccMag.std           	180 mean measurements
-  tBodyAccJerkMag.mean         	180 mean measurements
-  tBodyAccJerkMag.std          	180 mean measurements
-  tBodyGyroMag.mean            	180 mean measurements
-  tBodyGyroMag.std             	180 mean measurements
-  tBodyGyroJerkMag.mean        	180 mean measurements
-  tBodyGyroJerkMag.std         	180 mean measurements
-  fBodyAcc.mean.X              	180 mean measurements
-  fBodyAcc.mean.Y              	180 mean measurements
-  fBodyAcc.mean.Z              	180 mean measurements
-  fBodyAcc.std.X               	180 mean measurements
-  fBodyAcc.std.Y               	180 mean measurements
-  fBodyAcc.std.Z               	180 mean measurements
-  fBodyAcc.meanFreq.X          	180 mean measurements
-  fBodyAcc.meanFreq.Y          	180 mean measurements
-  fBodyAcc.meanFreq.Z          	180 mean measurements
-  fBodyAccJerk.mean.X          	180 mean measurements
-  fBodyAccJerk.mean.Y          	180 mean measurements
-  fBodyAccJerk.mean.Z          	180 mean measurements
-  fBodyAccJerk.std.X           	180 mean measurements
-  fBodyAccJerk.std.Y           	180 mean measurements
-  fBodyAccJerk.std.Z           	180 mean measurements
-  fBodyAccJerk.meanFreq.X      	180 mean measurements
-  fBodyAccJerk.meanFreq.Y      	180 mean measurements
-  fBodyAccJerk.meanFreq.Z      	180 mean measurements
-  fBodyGyro.mean.X             	180 mean measurements
-  fBodyGyro.mean.Y             	180 mean measurements
-  fBodyGyro.mean.Z             	180 mean measurements
-  fBodyGyro.std.X              	180 mean measurements
-  fBodyGyro.std.Y              	180 mean measurements
-  fBodyGyro.std.Z              	180 mean measurements
-  fBodyGyro.meanFreq.X         	180 mean measurements
-  fBodyGyro.meanFreq.Y         	180 mean measurements
-  fBodyGyro.meanFreq.Z         	180 mean measurements
-  fBodyAccMag.mean             	180 mean measurements
-  fBodyAccMag.std              	180 mean measurements
-  fBodyAccMag.meanFreq         	180 mean measurements
-  fBodyBodyAccJerkMag.mean     	180 mean measurements
-  fBodyBodyAccJerkMag.std      	180 mean measurements
-  fBodyBodyAccJerkMag.meanFreq 	180 mean measurements
-  fBodyBodyGyroMag.mean        	180 mean measurements
-  fBodyBodyGyroMag.std         	180 mean measurements
-  fBodyBodyGyroMag.meanFreq    	180 mean measurements
-  fBodyBodyGyroJerkMag.mean    	180 mean measurements
-  fBodyBodyGyroJerkMag.std     	180 mean measurements
-  fBodyBodyGyroJerkMag.meanFreq	180 mean measurements
   
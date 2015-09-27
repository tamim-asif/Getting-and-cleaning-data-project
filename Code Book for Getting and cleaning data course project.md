---
title: "Code Book for "Getting and cleaning data" course project"
author: "Md. Asif Shahjalal"
date: "September 27, 2015"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.



 
## The following variables are used in the tidy data:


##"Subject"
          30 subjects on whom the experiments were conducted on.
##"Activity_name"
          A variable explaining 6 activities:
              *WALKING
              *WALKING_UPSTAIRS
              *WALKING_DOWNSTAIRS
              *SITTING
              *STANDING
              *LAYING
          
# Average of various tests according to subject and activity name :
### tBodyAcc-mean()-X 
### tBodyAcc-mean()-Y
### tBodyAcc-mean()-Z 
### tBodyAcc-std()-X
### tBodyAcc-std()-Y
### tBodyAcc-std()-Z
### tGravityAcc-mean()-X
### tGravityAcc-mean()-Y
### tGravityAcc-mean()-Z
### tGravityAcc-std()-X
### tGravityAcc-std()-Y
### tGravityAcc-std()-Z
### tBodyAccJerk-mean()-X
### tBodyAccJerk-mean()-Y
### tBodyAccJerk-mean()-Z
### tBodyAccJerk-std()-X
### tBodyAccJerk-std()-Y
### tBodyAccJerk-std()-Z
### tBodyGyro-mean()-X
### tBodyGyro-mean()-Y
### tBodyGyro-mean()-Z
### tBodyGyro-std()-X
### tBodyGyro-std()-Y
### tBodyGyro-std()-Z
### tBodyGyroJerk-mean()-X
### tBodyGyroJerk-mean()-Y
### tBodyGyroJerk-mean()-Z
### tBodyGyroJerk-std()-X
### tBodyGyroJerk-std()-Y
### tBodyGyroJerk-std()-Z
### tBodyAccMag-mean()
### tBodyAccMag-std()
### tGravityAccMag-mean()
### tGravityAccMag-std()
### tBodyAccJerkMag-mean()
### tBodyAccJerkMag-std()
### tBodyGyroMag-mean()
### tBodyGyroMag-std()
### tBodyGyroJerkMag-mean()
### tBodyGyroJerkMag-std()
### fBodyAcc-mean()-X
### fBodyAcc-mean()-Y
### fBodyAcc-mean()-Z
### fBodyAcc-std()-X
### fBodyAcc-std()-Y
### fBodyAcc-std()-Z
### fBodyAcc-meanFreq()-X
### fBodyAcc-meanFreq()-Y
### fBodyAcc-meanFreq()-Z
### fBodyAccJerk-mean()-X
### fBodyAccJerk-mean()-Y
### fBodyAccJerk-mean()-Z
### fBodyAccJerk-std()-X
### fBodyAccJerk-std()-Y
### fBodyAccJerk-std()-Z
### fBodyAccJerk-meanFreq()-X
### fBodyAccJerk-meanFreq()-Y
### fBodyAccJerk-meanFreq()-Z
### fBodyGyro-mean()-X
### fBodyGyro-mean()-Y
### fBodyGyro-mean()-Z
### fBodyGyro-std()-X
### fBodyGyro-std()-Y
### fBodyGyro-std()-Z
### fBodyGyro-meanFreq()-X
### fBodyGyro-meanFreq()-Y
### fBodyGyro-meanFreq()-Z
### fBodyAccMag-mean()
### fBodyAccMag-std()
### fBodyAccMag-meanFreq()
### fBodyBodyAccJerkMag-mean()
### fBodyBodyAccJerkMag-std()
### fBodyBodyAccJerkMag-meanFreq()
### fBodyBodyGyroMag-mean()
### fBodyBodyGyroMag-std()
### fBodyBodyGyroMag-meanFreq()
###  fBodyBodyGyroJerkMag-mean()
### fBodyBodyGyroJerkMag-std()
### fBodyBodyGyroJerkMag-meanFreq()
### angle(tBodyAccMean,gravity)
### angle(tBodyAccJerkMean),gravityMean)
### angle(tBodyGyroMean,gravityMean)
### angle(tBodyGyroJerkMean,gravityMean)
### angle(X,gravityMean)
### angle(Y,gravityMean)
### angle(Z,gravityMean)
   
# Raw data:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.



#Processing tidy data :
###Merges the training and the test sets to create one data set.
  data for test and train data were read and loaded into R. They were merged together using the rbind function.
###Extracts only the measurements on the mean and standard deviation for each          measurement. 
  specific columns containing mean and standard deviations were taken from the previous data set by subsetting with grep() function.
###Uses descriptive activity names to name the activities in the data set
  activity_labels.txt file was read and loadeed in R. It was merged with the step1 data set using merge() function by the activity_label variable.
###Appropriately labels the data set with descriptive variable names. 
  The variable names were read and loaded from the features.txt and then were assigned to each column header of the data set created in step1.
###From the data set in step 4, creates a second, independent tidy data set with       the average of each variable for each activity and each subject.
  The step4 data was first grouped by subject and activity then summarized by their mean of each variable.




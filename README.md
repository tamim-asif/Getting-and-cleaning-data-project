# Getting-and-cleaning-data-project

This repository contains the following files:

* run_analysis.r
* tidy_data.txt
* Code Book for Getting and cleaning data course project.md
* readme.txt


## run_analysis.R:
contains the code for the following process:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each      activity and each subject.


## Code Book:
It describes various variables used in the tidy data sheet.

## tidy_data.txt:
It contains the output tidy data after processing the mentioned steps. This can be called a tidy data because it contains
exactly one variable per column and 1 observation per row.

### p.s : You can re run the code after downloading the data. Just use read.table("tidy_data.txt",header = TRUE)


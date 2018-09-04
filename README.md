# Project: Getting_Cleaning_Data-Course

---
title: "README: Getting and Cleaning Data Course Project"
author: "Aliakbar Safilian"
date: "Sep 3, 2018"
---

There is an R script file, 'run_analysis.R', which reads the raw data sets and outputs a desired tidy data set.
In this document, we see how this script works. 


##PREPARATION: 
(1) Download the raw data sets from the following link:
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
(2) Extract the zip file, and make it your working directory. 


##loading the 'dplyr' library.
	library(dplyr)
  We need dplyr to be able to use the group_by and summarize_all functions. 
	
##READING DATA: 
The 'run_analysis' reads 8 data sets, which together represent the raw data.
In the following, we show what they are and how to get them: 
(1) 'features':
	A data frame which should be read from 'features.txt' using the 'read.table' function with parameter 'stringsAsFactors = FALSE':
		features <- read.table("features.txt", stringsAsFactors = FALSE)
	It represents the list of all features.
(2) 'activities':
	A data frame which should be read from 'activity_labels.txt'. 
		activities <- read.table("activity_labels.txt")
	It links the class labels with their activity name.
(3) 'X_train': 
	A data frame which must be read from 'train/X_train.txt'. 
		X_train <- read.table("train/X_train.txt")
	It includes the training examples. 
(4) 'y_train': 
	A data frame which must be read from 'train/y_train.txt'. 
		y_train <- read.table("train/y_train.txt")
	It represents the training labels.
(5) 'X_test':
	A data frame which must be read from 'test/X_test.txt'.  
		X_test <- read.table("test/X_test.txt")
	It includes the test examples.
(6) 'y_test':
	A data frame which must be read from 'test/y_test.txt'.
		y_test <- read.table("test/y_test.txt")
	It represents the test labels.
(7) 'subject_train':
	A data frame which must be read from 'train/subject_train.txt'.
		subject_train <- read.table("train/subject_train.txt")
	Each row identifies the subject who performed the activity for the corresponding training example.
(8) 'subject_test':
	A data frame which must be read from 'test/subject_test.txt'.
		subject_test <- read.table("test/subject_test.txt")
	Each row identifies the subject who performed the activity for the corresponding test example.


##INITIALIZATION.
	We give appropriate names to 'subjects' and 'labels' as follows. 
	names(subject_train) <- "subject"
    names(subject_test) <- "subject"
	names(y_train) <- "activity"
	names(y_test) <- "activity"
	This would make out life easier when later we want to merge the data sets in STEP 1

###STEP1.
In this part, we merge the given data sets. This would address the first step of the project.
The inputs of this steps are the following data frames: 
	(1) X_train, 
	(2) X_test, 
	(3) y_train, 
	(4) y_test, 
	(5) subject_train, and 
	(6) subject_test. 
The output of this step is a data frame called 'ds_merged', which is the merged version of the given data sets.
To get it, we do as follows.
	(1) merge the training and data sets to get X_merged: 
		X_merged <- rbind(X_train, X_test)
    (2) merge the trainig and test label data sets to get y_merged:
		y_merged <- rbind(y_train, y_test)
    (3) merge the subject_train and subject_test to get subject_merged:
		subject_merged <- rbind(subject_train, subject_test)
    (4) merge subject_merged, X_merged, and y_merged to get ds_merged:
		ds_merged <- cbind(subject_merged, X_merged, y_merged) 

##STEP2.
In this part, we extract mean & st columns. This step addresses the second task of the project.
The inputs of this steps are the following data frames: 
	(1) ds_merged, 
	(2) features. 
The output of this step is a data frame called 'ds_merged_sel', which includes only the measurements on the mean and standard deviation for each
measurement.
To get it, the script follows the following steps.
	(1) extract corresponding variable indices from features, and save it into the object cols_ms:
		cols_ms <- grep("(mean\\(\\))|(std\\(\\))", features$V2)
		cols_ms <- cols_ms + 1   (becasue of added subject to the merged data)
	(2) select the appropriate columns from ds_merged to get 'ds_merged_sel':
		ds_merged_sel <- ds_merged %>% select("subject", cols_ms, "activity")
		
##STEP3.
In this part, we use descriptive activity names to name the activities in the data set. This would address the third task of the project.
The inputs of this steps are the following data frames:
	(1) ds_merged_sel, 
	(2) activities.
The output of this step is a data frame called 'ds_merged_sel_act'. 
To get it, the script follows the following steps.
	(1) extract the number of observations (rows) in ds_merged_sel:
		n <- dim(ds_merged_sel)[1]
	(2) extract the corresponding activity names from the 'activities' data frame and save it in a chracter vector called new_activities:
		new_activity <- vector(mode = "character", length = n)
		for(i in c(1:n)){
				new_activity[i] <- as.character(activities$V2[ds_merged_sel$activity[i]])
		}
	(3) replace the values of the 'activity' column in ds_merged_sel with extracted activity names and get a new data frame called ds_merged_sel_act:
		ds_merged_sel_act <- ds_merged_sel %>% mutate(activity = new_activity)
		
##STEP4.
In this part, we appropriately labels the data set with descriptive variable names. This would address the forth task of the project.
The inputs of this step are the following data frames:
	(1) 'ds_merged_sel_act',
	(2) 'features'
The output of this step is a data frame called 'ds_tidy_internal'. 
To get it, the script does the following steps.
	(1) extract the corresponding variable values from features, and save it into the object cols_ms_value:
		cols_ms_value <- grep("(mean\\(\\))|(std\\(\\))", features$V2, value = T)
	(2) initialize ds_tidy_internal:
		ds_tidy_internal <- ds_merged_sel_act 
		names(ds_tidy_internal)[2:67] <- cols_ms_value
	(3) replace 't' at the begining with 'time':
		names(ds_tidy_internal) <- sub("^t", "time-", names(ds_tidy_internal))
	(4) 'f' at the begining is replaced by 'fft':
		names(ds_tidy_internal) <- sub("^f", "fft-", names(ds_tidy_internal))
    (5) 'Body' is replaced by 'body-':
		names(ds_tidy_internal) <- gsub("Body", "body-", names(ds_tidy_internal))
    (6) 'Gravity' is replaced by 'gravity-':
		names(ds_tidy_internal) <- gsub("Gravity", "gravity-", names(ds_tidy_internal))
    (7) 'Acc' is replaced by 'accelerometer':
		names(ds_tidy_internal) <- gsub("Acc-", "accelerometer-", names(ds_tidy_internal))
		names(ds_tidy_internal) <- gsub("Acc", "accelerometer-", names(ds_tidy_internal))
    (8) 'Gyro' is replaced by 'gyroscope':
		names(ds_tidy_internal) <- gsub("Gyro-", "gyroscope-", names(ds_tidy_internal))
		names(ds_tidy_internal) <- gsub("Gyro", "gyroscope-", names(ds_tidy_internal))
    (9) 'Mag' is replaced by 'magnitude':
		names(ds_tidy_internal) <- gsub("Mag", "magnitude", names(ds_tidy_internal))
    (10) 'Jerk' is replaced by 'jerk-':
		names(ds_tidy_internal) <- gsub("Jerkm", "jerk-m", names(ds_tidy_internal))
    (11) to be sure that all the letter are in lower-case:
		names(ds_tidy_internal) <- tolower(names(ds_tidy_internal))

##STEP5.
This part, from the data set in step 4, creates a second, independent tidy data set with the
average of each variable for each activity and each subject. This would address the final task of the project.
The input of this step is the 'ds_tidy_internal' data frame.
The output is a data frame called 'ds_tidy', which is obtained through the following steps.
(We also write the result in a txt file called 'ds_tidy.txt')
	(1) get the ds_tidy data frame using by the grouped_by and summarize_all funtions:
		ds_tidy <- ds_tidy_internal %>% group_by(activity, subject) %>% 
			summarize_all(funs(mean))
    (2) write the table into 'ds_tidy.txt':
		write.table(ds_tidy, file = "ds_tidy.txt", row.names=FALSE)

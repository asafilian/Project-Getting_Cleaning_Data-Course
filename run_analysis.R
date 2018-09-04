#### The script for the Final Project 
####            Course: Getting & Cleaning Data:

### You should create one R script called run_analysis.R that does the following.
## 1.	Merges the training and the test sets to create one data set.
## 2.	Extracts only the measurements on the mean and standard deviation for 
##      each measurement.
## 3.	Uses descriptive activity names to name the activities in the data set.
## 4.	Appropriately labels the data set with descriptive variable names.
## 5.	From the data set in step 4, creates a second, independent tidy data set 
##      with the average of each variable for each activity and each subject.

        
### ULTIMATE OUTPUT
        ## ds_tidy: 
        ##     a manupulated tidy data set which is wanted from the project
        ## The script also writes it into a file named 'ds_tidy.txt'


### LAODING libraries: 
library(dplyr)


### READING DATA: 
### (we assume that the current working directory is the main folder
### where the ZIP file was unzipped)
        ## read 'features':
features <- read.table("features.txt", stringsAsFactors = FALSE)
        ## read 'activity_labels':
activities <- read.table("activity_labels.txt")
        ## read 'X_train':
X_train <- read.table("train/X_train.txt")
        ## read 'y_train':
y_train <- read.table("train/y_train.txt")
        ## read 'X_test':
X_test <- read.table("test/X_test.txt")
        ## read 'y_test':
y_test <- read.table("test/y_test.txt")
        ## read 'subject_train':
subject_train <- read.table("train/subject_train.txt")
        ## read 'subject_test':
subject_test <- read.table("test/subject_test.txt")



### INITIALIZATION:
        ## Name the variables of subject_train and subject_test 
        ## (This would make our life easier)
names(subject_train) <- "subject"
names(subject_test) <- "subject"
        ## Name the variables of y_train and y_test
        ## (This would make our life easier)
names(y_train) <- "activity"
names(y_test) <- "activity"


### STEP1: merge the data sets...
###     the inputs: X_train, X_test, y_train, y_test, subject_train, subject_test 
###     the output: a data set called 'ds_merged'
        ## merge the training and data sets to get X_merged:
X_merged <- rbind(X_train, X_test)
        ## merge the trainig and test label data sets to get y_merged:
y_merged <- rbind(y_train, y_test)
        ## merge the subject_train and subject_test to get subject_merged:
subject_merged <- rbind(subject_train, subject_test)
        ## merge subject_merged, X_merged, and y_merged to get ds_merged:
ds_merged <- cbind(subject_merged, X_merged, y_merged)


### STEP2: extract mean & st columns...
###     the inputs: ds_merged & features 
###     the output: a data frame called, ds_merged_sel
        ## extract corresponding variable indices from features
cols_ms <- grep("(mean\\(\\))|(std\\(\\))", features$V2)
cols_ms <- cols_ms + 1  # becasue of added subject to the merged data
        ## select the appropriate columns from ds_merged to get ds_merged_sel
ds_merged_sel <- ds_merged %>% select("subject", cols_ms, "activity")


### STEP3: name the activities
###     the inputs: ds_merged_sel & activities
###     the output: a data set called ds_merged_sel_act
        ## extract the number of observations (rows) in ds_merged_sel:
n <- dim(ds_merged_sel)[1]
        ## extract the corresponding activity names from the 'activities' data frame
        ## and save it in a chracter vector called new_activities
new_activity <- vector(mode = "character", length = n)
for(i in c(1:n)){
        new_activity[i] <- as.character(activities$V2[ds_merged_sel$activity[i]])
}
        ## replace the values of the 'activity' column in ds_merged_sel
        ## with extracted activity names
        ## and get a new data frame called ds_merged_sel_act
ds_merged_sel_act <- ds_merged_sel %>% mutate(activity = new_activity)


### STEP 4: appropriately name the variables
###     input: ds_merged_sel_act 
###     output: a data frame called ds_tidy_internal
        ## extract the corresponding variable values from features, and save it into the object cols_ms_value:
cols_ms_value <- grep("(mean\\(\\))|(std\\(\\))", features$V2, value = T)
        ## initialize ds_tidy_internal:
ds_tidy_internal <- ds_merged_sel_act 
names(ds_tidy_internal)[2:67] <- cols_ms_value
        ## 't' at the begining is replaced by 'time':
names(ds_tidy_internal) <- sub("^t", "time-", names(ds_tidy_internal))
        ## 'f' at the begining is replaced by 'fft':
names(ds_tidy_internal) <- sub("^f", "fft-", names(ds_tidy_internal))
        ## 'Body' is replaced by 'body-':
names(ds_tidy_internal) <- gsub("Body", "body-", names(ds_tidy_internal))
        ## 'Gravity' is replaced by 'gravity-':
names(ds_tidy_internal) <- gsub("Gravity", "gravity-", names(ds_tidy_internal))
        ## 'Acc' is replaced by 'accelerometer':
names(ds_tidy_internal) <- gsub("Acc-", "accelerometer-", names(ds_tidy_internal))
names(ds_tidy_internal) <- gsub("Acc", "accelerometer-", names(ds_tidy_internal))
        ## 'Gyro' is replaced by 'gyroscope':
names(ds_tidy_internal) <- gsub("Gyro-", "gyroscope-", names(ds_tidy_internal))
names(ds_tidy_internal) <- gsub("Gyro", "gyroscope-", names(ds_tidy_internal))
        ## 'Mag' is replaced by 'magnitude':
names(ds_tidy_internal) <- gsub("Mag", "magnitude", names(ds_tidy_internal))
        ## 'Jerk' is replaced by 'jerk-':
names(ds_tidy_internal) <- gsub("Jerkm", "jerk-m", names(ds_tidy_internal))
        ## to be sure that all the letter are in lower-case:
names(ds_tidy_internal) <- tolower(names(ds_tidy_internal))


### STEP 5: tidy data set plus average
###     input: ds_tidy_internal
###     output: a data frame called ds_tidy and a file called 'ds_tidy.txt':
ds_tidy <- ds_tidy_internal %>% group_by(activity, subject) %>% 
        summarize_all(funs(mean))
        ## write the table into 'ds_tidy.txt':
write.table(ds_tidy, file = "ds_tidy.txt", row.names=FALSE)
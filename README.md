# Getting-and-Cleaning-Data-Project
This repository contains all the files related to the final course project for the 'Getting and Cleaning Data' offered by John Hopkin University on Coursera. 

### The repository includes:
1. run_analysis.R script : Performs the required data collection, manipulation and extraction 
2. final_dataSet.txt : Final Data set obtained after running the script on the data set
3. CodeBook.md : Explains the data set, variables and transformations done on the original data to obtain the tidy Data

### Cheking the script: 
- Download the data set: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip the subfolders into your woring directory
- Run the script in R studio 
- Make sure you set your working directory where you unzipped the subfolders.
- Run the script and verify you obtain "final_dataSet.txt" in your working directory.

### Explanation of the script
- The script is broken down into five tasks:

#### Task 1: Merge the training and the test sets to create one data set.
1. Aquire Data: Read the "train/X_train.txt" and "test/X_test.txt" using read.tables() and merge using rbind()
2. Acquire Label: Read the "train/y_train.txt" and "test/y_test.txt" using read.tables() and merge using rbind()
3. Acquire Subject: Read the "train/subject_train.txt" and "test/subject_test.txt" using read.tables() and merge using rbind()

#### Task 2: Extract the measurements on the mean and standard deviation for each measurement
1. Read the "features.txt"
2. Using the grep() function with the expression "-mean\\(\\)|-std\\(\\)"  seach through the variable names to map the indices of the concerned columns. Note -mean\\(\\)|-std\\(\\) means "-mean"<space>"(<space>)" OR "-std"<space>"(<space>)"
3. The indices are used to subset the Data 

#### Task 3: Use descriptive activity names to name the activities in the data set
- Read "activities.txt" and map label to activities names

#### Task 4: Appropriately label the data set with descriptive variable names. 
1. Set the name of Subject data frame to "Subject"
2. Set the name of Label data frame to "Activities"
3. Finally merge the data sets using cbind()

#### task 5: Obtain average of each variable for each activity and each subject
- Using nested for loop evaluate mean of each activity of each subject
- bind it to the final data set at each evaluation



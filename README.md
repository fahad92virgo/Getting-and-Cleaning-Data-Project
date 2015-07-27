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

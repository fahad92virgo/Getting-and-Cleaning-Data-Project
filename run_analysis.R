
# Unzip the files in the working directory 

# Task 1: Merge the training and the test sets to create one data set.

Training_Data  <- read.table("train/X_train.txt")
Testing_Data   <- read.table("test/X_test.txt")

Data <- rbind(Training_Data, Testing_Data)


Training_Label <- read.table("train/y_train.txt")
Testing_Label  <- read.table("test/y_test.txt")

Label <- rbind(Training_Label, Testing_Label)

Training_Subject <- read.table("train/subject_train.txt")
Testing_Subject  <- read.table("test/subject_test.txt")

Subject <- rbind(Training_Subject, Testing_Subject)

# Task 2:  Extract the measurements on the mean and standard deviation for each measurement

Features <- read.table("features.txt")
head(Features, n=10)
extract<- grep("-mean\\(\\)|-std\\(\\)", Features[, 2])

usefulData <- Data[,extract]  
names(usefulData) <- Features[extract, 2]

head(usefulData)

# Task 3: Use descriptive activity names to name the activities in the data set

activities <- read.table("activity_labels.txt")
Label[,1] = activities[Label[,1], 2]
head(Label)

# Task 4: Appropriately label the data set with descriptive variable names. 

names(Subject) <- "Subject"
names (Label)  <- "Activity"

Merged_Data <- cbind(Subject, Label, usefulData)

head(Merged_Data)

# Task 5: creates a second, independent tidy data set with the average of each variable
#         for each activity and each subject

uniqueSubjects = unique(Subject)[,1]
numSubjects = length(unique(Subject)[,1])
numActivities = length(activities[,1])
numCols = dim(Merged_Data)[2]

finalData = Merged_Data[1:(numSubjects*numActivities), ]

row = 1
for (s in 1:numSubjects) {
        for (a in 1:numActivities) {
                finalData[row, 1] = uniqueSubjects[s]
                finalData[row, 2] = activities[a, 2]
                tmp <- Merged_Data[Merged_Data$Subject==s & Merged_Data$Activity==activities[a, 2], ]
                finalData[row, 3:numCols] <- colMeans(tmp[, 3:numCols])
                row = row+1
        }
}

head(finalData)

write.table(finalData, "final_DataSet.txt", row.name=FALSE)

check<- read.table("final_DataSet.txt")
head(check)

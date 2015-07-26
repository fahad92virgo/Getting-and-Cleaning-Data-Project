# Course Project Code Book

The Code Book reiterates the details on the initial data set used for the analysis and provides additional information on the 
transformations and analysis done on the data.

Data Set link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Transformations of the original data set:
The run_analysis.R script does the following transformations

1. Sequentially read the Training set and Test set for equipment Data using read.table() and merge them using rbind(). 
2. Repeat step 1 for Label and Subject
3. Read the features data 
4. Using R expressions and grep() function the indexes of the features list containing the mean and std are extracted
5. The indexes are then used to extract the Data concerning the mean and std only

###For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

###The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

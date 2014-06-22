##Human Activity Recognition Using Smartphones Data Set

Data Source: data collected from the accelerometers from the Samsung Galaxy S smartphone

source link http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Data file link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Description of study:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The downloaded dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

##For this project we have been asked to do the following:
 Write an R script called run_analysis.R to do the following:

* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately label the data set with descriptive activity names. 
* Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

Merging Data: I have merged the sets into one set of rows (Particpants) and columns (Activity, Variable, Value)

Data Sample: I have worked with the data in the first 8 columns as a data sample

##Final File Output(s) are:
NewMergedDataTable.txt  : all merged data in text file
NewMergedDataTable.csv : all merged data in csv file
TidyDataSet1_mean_std  :  sample data from first 8 columns
TidyDataSet2_averages:  sample data from first 8 columns

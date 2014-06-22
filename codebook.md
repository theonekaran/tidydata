##Human Activity Recognition Using Smartphones Data Set

Data Source: data collected from the accelerometers from the Samsung Galaxy S smartphone

source link http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Data file link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Assumption is that the user of the 'run_analysis.R' script will have the data downloaded and extracted. The 'run_analysis.R' file will be outside of the 'UCI HAR Dataset' directory where all the data lies. 
The final tidy data set will be created inside the 'UCI HAR Dataset' directory under the file name 'tidy_data.txt'.

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

Data used: I have used the first 8 columns: First 2 are Subject Number, Activity type. Last 6 columns are the mean and std deviation of each activity that is required to be extracted in Step 2 above.

##Final File Output(s) are:
tidy_data.txt which is the average of the mean and std_dev of each measurement for each activity and each subject.

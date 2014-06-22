library(data.table)
library(reshape2)
# 0. load test and training sets and the activities
testData <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
testData_act <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
testData_sub <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)
trainData_act <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
trainData_sub <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)

# 3. Uses descriptive activity names to name the activities in the data set
# Use the provided activites label file in the dataset to label all the activity names 
activities <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE,colClasses="character")
testData_act$V1 <- factor(testData_act$V1,levels=activities$V1,labels=activities$V2)
trainData_act$V1 <- factor(trainData_act$V1,levels=activities$V1,labels=activities$V2)

# 4. Appropriately labels the data set with descriptive activity names
# Use the provided feature list to label all data columns
# Also label the Activity and Subject files appropriately
features <- read.table("./UCI HAR Dataset/features.txt",header=FALSE,colClasses="character")
colnames(testData)<-features$V2
colnames(trainData)<-features$V2
colnames(testData_act)<-c("Activity")
colnames(trainData_act)<-c("Activity")
colnames(testData_sub)<-c("Subject")
colnames(trainData_sub)<-c("Subject")

# 1. merge test and training sets into one data set, including the activities
# I have chosen to append the Activity and Subject columsn in the begining
testData<-cbind(testData_act, testData)
testData<-cbind(testData_sub, testData)
trainData<-cbind(trainData_act, trainData)
trainData<-cbind(trainData_sub, trainData)
bigData<-rbind(testData,trainData)

# 2. extract only the measurements on the mean and standard deviation for each measurement
# If you notice the first 6 columns after Subject and Activity columns have the 
# mean and std_deviation values
# According to the instructions I have left out all the remaining data
bigData <- bigData[,1:8]

# 5. Creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject.
# I created two seperate lists for the id labels and measurement labels for the melt funtion
id_labels   = c("Subject", "Activity")
data_labels = setdiff(colnames(bigData), id_labels)
prep_data = melt(bigData, id = id_labels, measure.vars = data_labels)
final_data = dcast(prep_data, Subject+Activity ~variable, mean)

# write the tidy dataset to a file
write.table(final_data, file = "./UCI HAR Dataset/tidy_data.txt")
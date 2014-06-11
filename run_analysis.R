# download the data file and unzip if not already present.
ZippedDataFilename <- "dataset.zip"
DataDirectory <- "UCI HAR Dataset"
if (!file.exists(ZippedDataFilename)) {
    message("Downloading data file")
    download.file(url="http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                  destfile=ZippedDataFilename,
                  mode="wb")
}
if (!file.exists(DataDirectory)) {
    message("Unzipping data file")
    unzip(ZippedDataFilename)
}

# load in test & training data
testSubjects <- read.table(sprintf("%s/test/subject_test.txt", DataDirectory))
testLabels <- read.table(sprintf("%s/test/Y_test.txt", DataDirectory))
testSet <- read.table(sprintf("%s/test/X_test.txt", DataDirectory))
trainSubjects <- read.table(sprintf("%s/train/subject_train.txt", DataDirectory))
trainLabels <- read.table(sprintf("%s/train/Y_train.txt", DataDirectory))
trainSet <- read.table(sprintf("%s/train/X_train.txt", DataDirectory))

# appropriately label the data set with descriptive variable names
features <- read.table(sprintf("%s/features.txt", DataDirectory))
names(trainSet) <- make.names(features$V2)
names(trainSubjects) <- c("TestSubject")
names(trainLabels) <- c("Activity")
names(testSet) <- make.names(features$V2)
names(testSubjects) <- c("TestSubject")
names(testLabels) <- c("Activity")

# merge the training and test sets to create one data set
testData <- cbind(testSubjects, testLabels, testSet)
trainData <- cbind(trainSubjects, trainLabels, trainSet)
dataSet <- rbind(trainData, testData)

# use descriptive activity names to name the activities in the data set
activityLabels <- read.table(sprintf("%s/activity_labels.txt", DataDirectory))
dataSet$Activity <- as.factor(x=dataSet$Activity)
levels(dataSet$Activity) <- activityLabels$V2

# extract only the measurements on the mean & standard deviation for each
# measurement - plus, of course, the Activity & TestSubject being measured.
columnsToKeep <- grep("\\.mean\\.|\\.meanFreq\\.|\\.std\\.|^Activity$|^TestSubject$", names(dataSet))
dataSet <- dataSet[,columnsToKeep]

# create a second, independent, tidy data set with the average of each
# variable for each activity and each subject
library(reshape2)
meltedData <- melt(dataSet, id=c("Activity", "TestSubject"))
meanData <- dcast(meltedData, Activity+TestSubject ~ variable, mean)

# write meanData out to a file
write.table(meanData, "TidyMeanData.txt", row.names=FALSE)

# run_analysis.R 2014-11-22
# if necessary set working directory to r files, "/UCI HAR Dataset" will be a subdirectory
# setwd("/Users/.../r")

## CODE: Merges the training and the test sets to create one data sets ####
# read data
# verify correct files to merge
list.files("./UCI HAR Dataset/test/Inertial Signals")
list.files("./UCI HAR Dataset/test")

directory <- "./UCI HAR Dataset/test"
fileList <- list.files(directory)
fileList <- fileList[grepl("txt", fileList)]
for (i in fileList){
	a <- read.table(paste(directory, "/", i, sep=""))
	assign(sub(".txt", "", i), a)
}

directory <- "./UCI HAR Dataset/train"
fileList <- list.files(directory)
fileList <- fileList[grepl("txt", fileList)]
for (i in fileList){
	a <- read.table(paste(directory, "/", i, sep=""))
	assign(sub(".txt", "", i), a)
}

# read activity names and assign as descriptive names
actNames <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)[2]
names(actNames)[1] <- "variables"
actNames$variables <- sub("\\(\\)", "", actNames$variables)
# clean up variable names
actNames$variables

names(X_test) <- actNames$variables
names(X_train) <- actNames$variables

# label y_test and y_train
actLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)[2]
y_test[,1] <- factor(y_test[,1], labels=actLabels[,1])
names(y_test) <- "activity"

names(y_train) <- "activity"
y_train[,1] <- factor(y_train[,1], labels=actLabels[,1])

# create test and training sets
testAll <- cbind(subject_test, y_test, X_test)
names(testAll)[1] <- "subject"

trainAll <- cbind(subject_train, y_train, X_train)
names(trainAll)[1] <- "subject"

# merge datasets; different subjects included in each
# verify same variables in each; yes
setdiff(names(trainAll), names(testAll))
dataAll <- rbind(trainAll, testAll)
# * (end)

## CODE: Extracts only the measurements on the mean and standard deviation for each measurement.  ####
dataAllMeanStd <- dataAll[, c("subject","activity", names(dataAll)[grep("mean|std", names(dataAll))])]
# * (end)

## CODE: Tidy data set average of each variable for each activity and subject  ####
meanByActivitySubject <- aggregate(. ~ subject + activity, data = dataAllMeanStd, function(x) mean(x, na.rm=TRUE))
write.table(meanByActivitySubject, file="meanByActivitySubject.txt", row.name=FALSE) 
# * (end)

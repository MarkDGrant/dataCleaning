R script to create tidy dataset follows includes the following steps:

- set working directory to program files, where "/UCI HAR Dataset" is a subdirectory
- list files to verify directory contains those to merge
- only include .txt files (check)
- read training files, subject (subject_train.txt), activity code (y_test.txt), and data from measurements (X_train.txt)
- read test files 
- read activity names (features.txt) and assign as descriptive names
- clean up variable names before assigning
- add descriptive activity names to activity code
- create test and training sets
- merge datasets; different subjects included in each
- verify same variables in each; yes
- extract only the measurements on the mean and standard deviation for each measurement
- create tidy data average of each variable for each activity and subject
- write to text file meanByActivitySubject.txt

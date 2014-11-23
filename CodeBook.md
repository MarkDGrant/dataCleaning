Description of variables, the data, and any transformations

The following, corresponding to program lines, outlines data manipuation and cleaning

File  ↓	Comment  ↓
run_analysis.R (2)	 run_analysis.R 2014-11-22
run_analysis.R (3)	 if necessary set working directory to r files, "/UCI HAR Dataset" will be a subdirectory
run_analysis.R (4)	 setwd("/Users/.../r")
run_analysis.R (6)	 Merges the training and the test sets to create one data sets ####
run_analysis.R (8)	 read data
run_analysis.R (9)	 verify correct files to merge
run_analysis.R (29)	 read activity names and assign as descriptive names
run_analysis.R (33)	 clean up variable names
run_analysis.R (39)	 label y_test and y_train
run_analysis.R (47)	 create test and training sets; variable to identify train or test data
run_analysis.R (54)	 merge datasets; different subjects included in each
run_analysis.R (55)	 verify same variables in each; yes
run_analysis.R (61)	 CODE: Extracts only the measurements on the mean and standard deviation for each measurement. ####
run_analysis.R (67)	 CODE: Tidy data set average of each variable for each activity and subject ####

Descriptive listing of variables included in the tidy dataset, means by subject and activity
 [1,] "tBodyAcc-mean-X"              
 [2,] "tBodyAcc-mean-Y"              
 [3,] "tBodyAcc-mean-Z"              
 [4,] "tBodyAcc-std-X"               
 [5,] "tBodyAcc-std-Y"               
 [6,] "tBodyAcc-std-Z"               
 [7,] "tGravityAcc-mean-X"           
 [8,] "tGravityAcc-mean-Y"           
 [9,] "tGravityAcc-mean-Z"           
[10,] "tGravityAcc-std-X"            
[11,] "tGravityAcc-std-Y"            
[12,] "tGravityAcc-std-Z"            
[13,] "tBodyAccJerk-mean-X"          
[14,] "tBodyAccJerk-mean-Y"          
[15,] "tBodyAccJerk-mean-Z"          
[16,] "tBodyAccJerk-std-X"           
[17,] "tBodyAccJerk-std-Y"           
[18,] "tBodyAccJerk-std-Z"           
[19,] "tBodyGyro-mean-X"             
[20,] "tBodyGyro-mean-Y"             
[21,] "tBodyGyro-mean-Z"             
[22,] "tBodyGyro-std-X"              
[23,] "tBodyGyro-std-Y"              
[24,] "tBodyGyro-std-Z"              
[25,] "tBodyGyroJerk-mean-X"         
[26,] "tBodyGyroJerk-mean-Y"         
[27,] "tBodyGyroJerk-mean-Z"         
[28,] "tBodyGyroJerk-std-X"          
[29,] "tBodyGyroJerk-std-Y"          
[30,] "tBodyGyroJerk-std-Z"          
[31,] "tBodyAccMag-mean"             
[32,] "tBodyAccMag-std"              
[33,] "tGravityAccMag-mean"          
[34,] "tGravityAccMag-std"           
[35,] "tBodyAccJerkMag-mean"         
[36,] "tBodyAccJerkMag-std"          
[37,] "tBodyGyroMag-mean"            
[38,] "tBodyGyroMag-std"             
[39,] "tBodyGyroJerkMag-mean"        
[40,] "tBodyGyroJerkMag-std"         
[41,] "fBodyAcc-mean-X"              
[42,] "fBodyAcc-mean-Y"              
[43,] "fBodyAcc-mean-Z"              
[44,] "fBodyAcc-std-X"               
[45,] "fBodyAcc-std-Y"               
[46,] "fBodyAcc-std-Z"               
[47,] "fBodyAcc-meanFreq-X"          
[48,] "fBodyAcc-meanFreq-Y"          
[49,] "fBodyAcc-meanFreq-Z"          
[50,] "fBodyAccJerk-mean-X"          
[51,] "fBodyAccJerk-mean-Y"          
[52,] "fBodyAccJerk-mean-Z"          
[53,] "fBodyAccJerk-std-X"           
[54,] "fBodyAccJerk-std-Y"           
[55,] "fBodyAccJerk-std-Z"           
[56,] "fBodyAccJerk-meanFreq-X"      
[57,] "fBodyAccJerk-meanFreq-Y"      
[58,] "fBodyAccJerk-meanFreq-Z"      
[59,] "fBodyGyro-mean-X"             
[60,] "fBodyGyro-mean-Y"             
[61,] "fBodyGyro-mean-Z"             
[62,] "fBodyGyro-std-X"              
[63,] "fBodyGyro-std-Y"              
[64,] "fBodyGyro-std-Z"              
[65,] "fBodyGyro-meanFreq-X"         
[66,] "fBodyGyro-meanFreq-Y"         
[67,] "fBodyGyro-meanFreq-Z"         
[68,] "fBodyAccMag-mean"             
[69,] "fBodyAccMag-std"              
[70,] "fBodyAccMag-meanFreq"         
[71,] "fBodyBodyAccJerkMag-mean"     
[72,] "fBodyBodyAccJerkMag-std"      
[73,] "fBodyBodyAccJerkMag-meanFreq" 
[74,] "fBodyBodyGyroMag-mean"        
[75,] "fBodyBodyGyroMag-std"         
[76,] "fBodyBodyGyroMag-meanFreq"    
[77,] "fBodyBodyGyroJerkMag-mean"    
[78,] "fBodyBodyGyroJerkMag-std"     
[79,] "fBodyBodyGyroJerkMag-meanFreq"



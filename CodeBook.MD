
# Data

An identifier of the subject who carried out the experiment.
Subject ID

The activity name:
Activity ID
class : Factor
levels 6
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

The average of each meassurament for each subject and each activity

Descriptive labels for Average measurements for each subject ID and Each Activity 
class : Float

 [5] "Avg_tBodyAcc-mean()-X "               "Avg_tBodyAcc-mean()-Y "              
 [7] "Avg_tBodyAcc-mean()-Z "               "Avg_tBodyAcc-std()-X "               
 [9] "Avg_tBodyAcc-std()-Y "                "Avg_tBodyAcc-std()-Z "               
[11] "Avg_tGravityAcc-mean()-X "            "Avg_tGravityAcc-mean()-Y "           
[13] "Avg_tGravityAcc-mean()-Z "            "Avg_tGravityAcc-std()-X "            
[15] "Avg_tGravityAcc-std()-Y "             "Avg_tGravityAcc-std()-Z "            
[17] "Avg_tBodyAccJerk-mean()-X "           "Avg_tBodyAccJerk-mean()-Y "          
[19] "Avg_tBodyAccJerk-mean()-Z "           "Avg_tBodyAccJerk-std()-X "           
[21] "Avg_tBodyAccJerk-std()-Y "            "Avg_tBodyAccJerk-std()-Z "           
[23] "Avg_tBodyGyro-mean()-X "              "Avg_tBodyGyro-mean()-Y "             
[25] "Avg_tBodyGyro-mean()-Z "              "Avg_tBodyGyro-std()-X "              
[27] "Avg_tBodyGyro-std()-Y "               "Avg_tBodyGyro-std()-Z "              
[29] "Avg_tBodyGyroJerk-mean()-X "          "Avg_tBodyGyroJerk-mean()-Y "         
[31] "Avg_tBodyGyroJerk-mean()-Z "          "Avg_tBodyGyroJerk-std()-X "          
[33] "Avg_tBodyGyroJerk-std()-Y "           "Avg_tBodyGyroJerk-std()-Z "          
[35] "Avg_tBodyAccMag-mean() "              "Avg_tBodyAccMag-std() "              
[37] "Avg_tGravityAccMag-mean() "           "Avg_tGravityAccMag-std() "           
[39] "Avg_tBodyAccJerkMag-mean() "          "Avg_tBodyAccJerkMag-std() "          
[41] "Avg_tBodyGyroMag-mean() "             "Avg_tBodyGyroMag-std() "             
[43] "Avg_tBodyGyroJerkMag-mean() "         "Avg_tBodyGyroJerkMag-std() "         
[45] "Avg_fBodyAcc-mean()-X "               "Avg_fBodyAcc-mean()-Y "              
[47] "Avg_fBodyAcc-mean()-Z "               "Avg_fBodyAcc-std()-X "               
[49] "Avg_fBodyAcc-std()-Y "                "Avg_fBodyAcc-std()-Z "               
[51] "Avg_fBodyAcc-meanFreq()-X "           "Avg_fBodyAcc-meanFreq()-Y "          
[53] "Avg_fBodyAcc-meanFreq()-Z "           "Avg_fBodyAccJerk-mean()-X "          
[55] "Avg_fBodyAccJerk-mean()-Y "           "Avg_fBodyAccJerk-mean()-Z "          
[57] "Avg_fBodyAccJerk-std()-X "            "Avg_fBodyAccJerk-std()-Y "           
[59] "Avg_fBodyAccJerk-std()-Z "            "Avg_fBodyAccJerk-meanFreq()-X "      
[61] "Avg_fBodyAccJerk-meanFreq()-Y "       "Avg_fBodyAccJerk-meanFreq()-Z "      
[63] "Avg_fBodyGyro-mean()-X "              "Avg_fBodyGyro-mean()-Y "             
[65] "Avg_fBodyGyro-mean()-Z "              "Avg_fBodyGyro-std()-X "              
[67] "Avg_fBodyGyro-std()-Y "               "Avg_fBodyGyro-std()-Z "              
[69] "Avg_fBodyGyro-meanFreq()-X "          "Avg_fBodyGyro-meanFreq()-Y "         
[71] "Avg_fBodyGyro-meanFreq()-Z "          "Avg_fBodyAccMag-mean() "             
[73] "Avg_fBodyAccMag-std() "               "Avg_fBodyAccMag-meanFreq() "         
[75] "Avg_fBodyBodyAccJerkMag-mean() "      "Avg_fBodyBodyAccJerkMag-std() "      
[77] "Avg_fBodyBodyAccJerkMag-meanFreq() "  "Avg_fBodyBodyGyroMag-mean() "        
[79] "Avg_fBodyBodyGyroMag-std() "          "Avg_fBodyBodyGyroMag-meanFreq() "    
[81] "Avg_fBodyBodyGyroJerkMag-mean() "     "Avg_fBodyBodyGyroJerkMag-std() "     
[83] "Avg_fBodyBodyGyroJerkMag-meanFreq() 
## Transformation done by run_analysis.R:
* Extract Train and test data set from flat files  . store it in x_train and x_test

* load features.txt flat file into features data set

* apply grep to load columns for mean and std measurements store it in fes_new .

* select columns for mean and std from train and test data set using fes_new 

* read subject and activity sets

* merge data into result set

* change names of labels with descriptive features names from features data sets

* aggregate data by subject and activity .


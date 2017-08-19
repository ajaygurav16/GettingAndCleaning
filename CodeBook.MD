
# Data

An identifier of the subject who carried out the experiment.
Subject ID

The activity name:
Activity ID
Factor
levels 6
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

The average of each meassurament for each subject and each activity


## Transformation done by run_analysis.R:
* Extract Train and test data set from flat files  . store it in x_train and x_test

* load features.txt flat file into features data set

* apply grep to load columns for mean and std measurements store it in fes_new .

* select columns for mean and std from train and test data set using fes_new 

* read subject and activity sets

* merge data into result set

* change names of labels with descriptive features names from features data sets

* aggregate data by subject and activity .


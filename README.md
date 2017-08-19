
# Getting and Cleaning Data

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The dataset is then divided in two parts and they can be used separately. 

1. Inertial sensor data 
- Raw triaxial signals from the accelerometer and gyroscope of all the trials with with participants. 
- The labels of all the performed activities. 

2. Records of activity windows. Each one composed of: 
- A 561-feature vector with time and frequency domain variables. 
- Its associated activity label. 
- An identifier of the subject who carried out the experiment

## Transformation done by run_analysis.R:
* Extract Train and test data set from flat files  . store it in x_train and x_test

* load features.txt flat file into features data set

* apply grep to load columns for mean and std measurements store it in fes_new .

* select columns for mean and std from train and test data set using fes_new 

* read subject and activity sets

* merge data into result set

* change names of labels with descriptive features names from features data sets

* aggregate data by subject and activity .


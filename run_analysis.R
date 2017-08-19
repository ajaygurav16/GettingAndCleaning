## Extract Train and test data set from flat files  . store it in x_train and x_test

x_test<-read.table("UCI HAR Dataset\\test\\X_test.txt")
x_train<-read.table("UCI HAR Dataset\\train\\X_train.txt")

## load features.txt flat file into features data set

features<-read.table("UCI HAR Dataset\\features.txt")

## load activity_labels.txt flat file into activity_labels data set
activity_labels<-read.table("UCI HAR Dataset\\activity_labels.txt")

## apply grep to load columns for mean and std measurements store it in fes_new .

fes_new<-grep("mean|std",features$V2)
features_ms<-features$V2[fes_new]

## select columns for mean and std from train and test data set using fes_new 

x_train<-x_train[,fes_new]
x_test<-x_test[,fes_new]


## read subject and activity sets
subject_id_train<-read.table("UCI HAR Dataset\\train\\subject_train.txt")
subject_id_test<-read.table("UCI HAR Dataset\\test\\subject_test.txt")
actv_id_train<-read.table("UCI HAR Dataset\\train\\y_train.txt")
actv_id_test<-read.table("UCI HAR Dataset\\test\\y_test.txt")

## merge data into result set

train_dta<-cbind(subject_id_train,actv_id_train,x_train)
test_dta<-cbind(subject_id_test,actv_id_test,x_test)
res_dta<-rbind(train_dta,test_dta)

## change names of labels with descriptive features names from features data sets
names(res_dta)[3:81]<-as.character(features_ms)
names(res_dta)[1]<-"subject_id"
names(res_dta)[2]<-"activity_id"



## aggregate data by subject and activity .
aggdata <-aggregate(res_dta, by=list(res_dta$subject_id,res_dta$activity_id), 
                    FUN=mean, na.rm=TRUE)
names(aggdata)[5:83]<-paste0("Avg_",names(aggdata[5:83]),sep=" ")

## replace a
aggdata$activity_id<-factor(aggdata$activity_id)
levels(aggdata$activity_id)<-activity_labels$V2


write.table(aggdata[,-(c(1,2))],"tidy_data.txt")


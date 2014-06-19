## Instructions: 
## Set the working directory to the location of the run_analysis.R file
## The unziped source data must be in a 'UCI HAR Dataset' directory in the same directory
## This R file produces a tidy data set of the source data 
## Check associated codebook and README @ https://github.com/matt32106/datacleaning

library(reshape2)
options(stringsAsFactors = FALSE)

####################################
## STEP 1. read and merge data files
####################################
f1<-read.table("./UCI HAR Dataset/test/subject_test.txt")  ## SUbject id
f2<-read.table("./UCI HAR Dataset/test/Y_test.txt")     ## Test labels
f3<-read.table("./UCI HAR Dataset/test/X_test.txt")                                  ## Test set
tab1<-cbind(f1,f2,f3) ## merge test data

f4<-read.table("./UCI HAR Dataset/train/subject_train.txt")                         ## SUbject id
f5<-read.table("./UCI HAR Dataset/train/Y_train.txt")                               ## Train labels
f6<-read.table("./UCI HAR Dataset/train/X_train.txt")                               ## Train set
tab2<-cbind(f4,f5,f6) ## merge train data

tab<-rbind(tab1,tab2) ## merge test and train
names(tab)=c("SubjectId","Activity")

####################################
## STEP 2. Extracts only the measurements on the mean and standard deviation for each measurement
####################################

FeaturesLabels<-read.table("./UCI HAR Dataset/features.txt")         ## read feature labels
FeaturesLabels$isMeanStd<-grepl("mean\\(|std\\(", FeaturesLabels$V2) ## is feature a mean or std ?
names(tab)[-(1:2)] <- FeaturesLabels$V2                              ## put the raw column names

## take only two first columns and those where isMeanStd is true
tab<-tab[,c(TRUE,TRUE,FeaturesLabels$isMeanStd)]

####################################
## STEP 3. Uses descriptive activity names to name the activities in the data set
####################################

## read label files
ActivityLabels<-read.table("./UCI HAR Dataset/activity_labels.txt")        ## activity labels
tab$Activity<-factor(tab$Activity, levels=ActivityLabels$V1, 
                                   labels=ActivityLabels$V2)               ## replace activity codes by labels

####################################
## STEP 4. Appropriately labels the data set with descriptive variable names. 
####################################
## features labels cleaning
tmp<-names(tab)[-(1:2)]
tmp<-gsub("[,]","_",tmp)         ## replace , by _
tmp<-gsub("\\(\\)","",tmp)       ## remove ()
tmp<-gsub("[-]",".",tmp)         ## replace - by .
names(tab)[-(1:2)] <- tmp        ## replaces current names with tidy labels 

####################################
## STEP 5. Creates a second, independent tidy data set with the average of each variable 
##         for each activity and each subject.
####################################

tmp <- melt(tab,id=c("SubjectId","Activity"))              
tmp <- dcast(tmp, Activity + SubjectId ~ variable, mean)


## save to disk
write.table(tmp, file="./tidyDataMeans.txt", row.names=FALSE)


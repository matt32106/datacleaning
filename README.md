Coursera: Getting and Cleaning Data
===================================

How to use the run_analysis.R script
------------------------------------
Instructions:  
* Set the working directory to the location of the run_analysis.R file   
* The unziped source data must be in a 'UCI HAR Dataset' directory in the same directory   
* From R studio do a '''source("run_analysis.R")'''
* This R file produces a tidy data set of the source data    
* Check associated codebook @ https://github.com/matt32106/datacleaning   


run_analysis.R code
-------------------
Input: the run_analysis script needs that the unzipped "UCI HAR Dataset" directory is in the working directory   
Ouput: the script process the above dataset and generates a tidy data file in the working directory   
   
The R script file follows the logic of the coursera assignment by processing the original dataset in 5 steps:   
1. Merges the training and the test sets to create one data set   
2. Extracts only the measurements on the mean and standard deviation for each measurement    
3. Uses descriptive activity names to name the activities in the data set   
4. Appropriately labels the data set with descriptive variable names    
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject    
   
   
END OF FILE

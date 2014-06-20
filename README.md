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
Ouput: the script process the above dataset and generates a tidy data file (tidyDataMeans.txt) in the working directory   
   
The R script file follows the logic of the coursera assignment by processing the original dataset in 5 steps:   
1. Merges the training and the test sets to create one data set   
	* Training and test sets files are read and put in a single data frame  
2. Extracts only the measurements on the mean and standard deviation for each measurement    
	* Columns are selected according to their name to keep only mean and std measures
	* This generates a subset of the original data frame 
3. Uses descriptive activity names to name the activities in the data set   
	* Activity **codes** are replaced by activity **labels**
4. Appropriately labels the data set with descriptive variable names    
	* Column names are tweaked to be more human readable (hopefully) and special characters are removed or replaced by code friendly ones like . or _
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject    
	* This first tidy data set is then melted and dcasted to generate a new data frame containing only one row per activity per subject containing the average (mean) of the selected features values 
	* This second tidy data set is written to the working directory

	
   
END OF FILE

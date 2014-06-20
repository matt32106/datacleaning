# Coursera: Getting and Cleaning Data

## How to use the run\_analysis.R script

Instructions:
-   Download the run\_analysis.R file to your working directory  
-   [Download the source data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip it in the working directory (this creates a 'UCI HAR Dataset' directory)  
-   From R studio do a `source("run_analysis.R")`  
-   The R script produces a tidy data set of the source data  
-   Check associated codebook here https://github.com/matt32106/datacleaning/blob/master/CodeBook.md  
  
## run\_analysis.R code
  
**Input**: the run\_analysis script needs that the unzipped "UCI HAR
Dataset" directory is in the working directory  
**Ouput**: the script process the above dataset and generates a tidy
data file (tidyDataMeans.txt) in the working directory  
  
The R script file follows the logic of the coursera assignment by
processing the original dataset in 5 steps:  
* Merges the training and the test sets to create one data set  
  1. Training and test sets files are read and put in a single data frame  
* Extracts only the measurements on the mean and standard deviation for each measurement  
  1. Columns are selected according to their name to keep only mean and std measures  
  2. This generates a subset of the original data frame  
* Uses descriptive activity names to name the activities in the data set  
  1. Activity **codes** are replaced by activity **labels**  
* Appropriately labels the data set with descriptive variable names  
  1. Column names are tweaked to be more human readable (hopefully)
     and special characters are removed or replaced by code friendly
     ones like . or \_  
* Creates a second, independent tidy data set with the average of each
  variable for each activity and each subject  
  1. This first tidy data set is then melted and dcasted to generate
     a new data frame containing only one row per activity per
     subject containing the average (mean) of the selected features
     values  
  2. The second tidy data set is written to the working directory  
     
	 
## Reference  
  
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L.
Reyes-Ortiz.  
Human Activity Recognition on Smartphones using a Multiclass
Hardware-Friendly Support Vector Machine.  
International Workshop of Ambient Assisted Living (IWAAL 2012).  
Vitoria-Gasteiz, Spain. Dec 2012

END OF FILE


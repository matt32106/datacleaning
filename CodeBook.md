Codebook
========
This codebook describes the variables, the data, and the transformations performed to clean up the data.

The original dataset comes from 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

SubjectId
-----------
Id of the subject (1 to 30) from the original dataset

Activity                  
----------
Activity labels of the subject when measures were recorded, possible values are:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

Features 
--------
The 66 remaining columns come from the original dataset, only the mean and std variables were kept.  
Columns names were slightly tweaked to be human readable.  
**Finally, to produce the final dataset, the data for each variable were summarized by Subject/Activity using the mean (average) function.**  

The following variables are provided in the final tidy dataset:
"tBodyAcc.mean.X[YZ]"          (.X[YZ] means that 3 variables are provided a.X, a.Y, a.Z)  
"tBodyAcc.std.X[YZ]"           
"tGravityAcc.mean.X[YZ]"       
"tGravityAcc.std.X[YZ]"        
"tBodyAccJerk.mean.X[YZ]"      
"tBodyAccJerk.std.X[YZ]"       
"tBodyGyro.mean.X[YZ]"         
"tBodyGyro.std.X[YZ]"          
"tBodyGyroJerk.mean.X[YZ]"     
"tBodyGyroJerk.std.X[YZ]"      

"tBodyAccMag.mean"         
"tBodyAccMag.std"           
"tGravityAccMag.mean"       
"tGravityAccMag.std"       
"tBodyAccJerkMag.mean"      
"tBodyAccJerkMag.std"       
"tBodyGyroMag.mean"        
"tBodyGyroMag.std"          
"tBodyGyroJerkMag.mean"     
"tBodyGyroJerkMag.std"     

"fBodyAcc.mean.X[YZ]"           
"fBodyAcc.std.X[YZ]"            
"fBodyAccJerk.mean.X[YZ]"       
"fBodyAccJerk.std.X[YZ]"        
"fBodyGyro.mean.X[YZ]"          
"fBodyGyro.std.X[YZ]"           
"fBodyAccMag.mean"          
"fBodyAccMag.std"           
"fBodyBodyAccJerkMag.mean" 
"fBodyBodyAccJerkMag.std"   
"fBodyBodyGyroMag.mean"     
"fBodyBodyGyroMag.std"     
"fBodyBodyGyroJerkMag.mean" 
"fBodyBodyGyroJerkMag.std" 

**NOTE : Don't forget that the final values are the _average_ of the original data for one subject/activity, the column names were not modified in order to keep them as readable as possible.**

where  
**t/f:** time data or Fourier transformed (frequency) data  
**Body/Gravity:** raw data were separated into body and gravity acceleration signals via filtering  
**Acc/Gyro:** signals origin is the Accelerometer or the Gyroscope of the device  
**Jerk:** derivation in time of the data  
**Mag:** magnitude of the signal  
**mean/std:** Mean or Standard deviation computation  
  
For complete reference, please see the *features_info.txt* file in the original dataset.



END OF FILE
This is the codebook for the txt file submited to the coursera correction system, the file name being " subjects_averages_data.txt "

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 



| Variable Names        | Variable description      |
| -------------        |:-------------:|
| tBodyAcc-mean()-X | Body acceleration mean. Separeted from Gravity acceleration with a low pass Butterworth filter with a corner frequency of 0.3 Hz ... on X axis| 
| tBodyAcc-mean()-Y | " ..on Y | 
| tBodyAcc-mean()-Z | " ..on Z | 
| tBodyAcc-std()-X | Body acceleraton standard deviation on X | 
| tBodyAcc-std()-Y | " ..on Y | 
| tBodyAcc-std()-Z | " ..on Z | 
| tGravityAcc-mean()-X | Gravity acceleration mean. Separeted from body acceleration with low pass Butterworth filter with a corner frequency of 0.3 Hz ... on X axis| 
| tGravityAcc-mean()-Y | " ..on Y  | 
| tGravityAcc-mean()-Z | " ..on Z  | 
| tGravityAcc-std()-X | Gravity acceleration standard deviation on X axis| 
| tGravityAcc-std()-Y |  " ..on Y |  
| tGravityAcc-std()-Z |  " ..on Z | 


Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).  This was not on the original Feature explanation text file, but by deduction "tBodyGyro" must refer to the measurement of the angular velocity.

| Variable Names        | Variable description      |
| -------------        |:-------------:|
| tBodyAccJerk-mean()-X | Mean of the Jerk signals of the linear body acceleration on X axis | 
| tBodyAccJerk-mean()-Y |  " ..on Y | 
| tBodyAccJerk-mean()-Z | " ..on Z   | 
| tBodyAccJerk-std()-X | Standar deviation of the Jerk signals of the linear body acceleration on X axis | 
| tBodyAccJerk-std()-Y |  " ..on Y | 
| tBodyAccJerk-std()-Z |  " ..on Z   | 
| tBodyGyro-mean()-X | Mean of the gyroscope angular velocity on X axis | 
| tBodyGyro-mean()-Y |  " ..on Y | 
| tBodyGyro-mean()-Z |  " ..on Z   | 
| tBodyGyro-std()-X | Standard deviation of the gyroscope angular velocity on X axis | 
| tBodyGyro-std()-Y |  " ..on Y | 
| tBodyGyro-std()-Z |  " ..on Z   | 
| tBodyGyroJerk-mean()-X | Mean of the Jerk signals of the body angular velocity on X axis | 
| tBodyGyroJerk-mean()-Y |  " ..on Y | 
| tBodyGyroJerk-mean()-Z |  " ..on Z   | 
| tBodyGyroJerk-std()-X | Standard variation of the Jerk signals of the body angular velocity on X axis | 
| tBodyGyroJerk-std()-Y |  " ..on Y | 
| tBodyGyroJerk-std()-Z |  " ..on Z   | 


Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

| Variable Names        | Variable description      |
| -------------        |:-------------:|
| tBodyAccMag-mean() | Mean of the magnitude of the three-dimensional signal of the Body acceleration | 
| tBodyAccMag-std() | Standard variation of the magnitude of the three-dimensional signal of the Body acceleration |  
| tGravityAccMag-mean() | Mean of the magnitude of the three-dimensional signal of the Gravity acceleration |  
| tGravityAccMag-std()  | Standard variation of the magnitude of the three-dimensional signal of the Gavity acceleration |  
| tBodyAccJerkMag-mean() | Mean of the magnitude of the three-dimensional signal of the Body acceleration Jerk signal | 
| tBodyAccJerkMag-std() | Standard variation of the magnitude of the three-dimensional signal of the Body acceleration Jerk signal | 
| tBodyGyroMag-mean() | Mean of the magnitude of the three-dimensional signal  of the Body angular velocity |  
| tBodyGyroMag-std() | Standard variation of the magnitude of the three-dimensional signa  of the Body angular velocity |  
| tBodyGyroJerkMag-mean() | Mean of the magnitude of the three-dimensional signal of the Body angular velocity Jerk signal | 
| tBodyGyroJerkMag-std() | Standard variation of the magnitude of the three-dimensional signal of the Body angular velocity Jerk signal |  


Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

| Variable Names        | Variable description      |
| -------------        |:-------------:|
| fBodyAcc-mean()-X | Body acceleration mean with "FFT". Separeted from Gravity acceleration with a low pass Butterworth filter with a corner frequency of 0.3 Hz ... on X axis|   
| fBodyAcc-mean()-Y  |  " ..on Y |  
| fBodyAcc-mean()-Z  |  " ..on Z   | 
| fBodyAcc-std()-X  | Body acceleraton standard deviation on X with "FFT". |  
| fBodyAcc-std()-Y  |  " ..on Y | 
| fBodyAcc-std()-Z  |  " ..on Z   | 
| fBodyAccJerk-mean()-X  |  Mean of the Jerk signals of the linear body acceleration on X axis  with "FFT". | 
| fBodyAccJerk-mean()-Y  | " ..on Y  | 
| fBodyAccJerk-mean()-Z |  " ..on Z   | 
| fBodyAccJerk-std()-X  | Standar deviation of the Jerk signals of the linear body acceleration on X axis with "FFT".  |  
| fBodyAccJerk-std()-Y  |  " ..on Y |  
| fBodyAccJerk-std()-Z |  " ..on Z   | 
| fBodyGyro-mean()-X  | Mean of the gyroscope angular velocity on X axis  with "FFT".  |  
| fBodyGyro-mean()-Y  |  " ..on Y | 
| fBodyGyro-mean()-Z  |  " ..on Z   | 
| fBodyGyro-std()-X  | Standard deviation of the gyroscope angular velocity on X axis  with "FFT".  |  
| fBodyGyro-std()-Y  |  " ..on Y | 
| fBodyGyro-std()-Z  |  " ..on Z   | 
| fBodyAccMag-mean()  |  Mean of the magnitude of the three-dimensional signal of the Body acceleration with "FFT".  | 
| fBodyAccMag-std()  | Standard variation of the magnitude of the three-dimensional signal of the Body acceleration  with "FFT". | 
| fBodyBodyAccJerkMag-mean()  | Mean of the magnitude of the three-dimensional signal of the Body acceleration Jerk signal with "FFT". | 
| fBodyBodyAccJerkMag-std() | Standard variation of the magnitude of the three-dimensional signal of the Body acceleration Jerk signal  with "FFT". | 
| fBodyBodyGyroMag-mean()  |  Mean of the magnitude of the three-dimensional signal  of the Body angular velocity  with "FFT". | 
| fBodyBodyGyroMag-std()  | Standard variation of the magnitude of the three-dimensional signa  of the Body angular velocity  with "FFT". | 
| fBodyBodyGyroJerkMag-mean()  | Mean of the magnitude of the three-dimensional signal of the Body angular velocity Jerk signal   with "FFT". | 
| fBodyBodyGyroJerkMag-std() | Standard variation of the magnitude of the three-dimensional signal of the Body angular velocity Jerk signal with "FFT".  | 


Finaly, the activity type and subject number.

| Variable Names        | Variable description      |
| -------------        |:-------------:|
| Activity | Type of activity done by the subject |
| subject | Subject number | 

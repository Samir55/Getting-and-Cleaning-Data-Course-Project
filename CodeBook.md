## CodeBook for Activity Recognition Using Smartphones Data Set 



##Variables
````
 subject							1..2
	subject who carried out the experiment
 						1:30 .Unique identifier assigned to a unique subject
 tbodyaccmeanx			            13
	descriped below                 
 tbodyaccmeany			            14
	descriped below                 
 tbodyaccmeanz			            14
	descriped below                 
 tbodyaccstdx			            14
	descriped below                 
 tbodyaccstdy			            14
	descriped below                 
 tbodyaccstdz			            14
	descriped below                 
 tgravityaccmeanx 		            12
	descriped below                 
 tgravityaccmeany 		            14
	descriped below                 
 tgravityaccmeanz 		            14
	descriped below                 
 tgravityaccstdx		            12
	descriped below                 
 tgravityaccstdy		            12
	descriped below                 
 tgravityaccstdz		            12
	descriped below                 
 tbodyaccjerkmeanx		            14
	descriped below                 
 tbodyaccjerkmeany		            14
	descriped below                 
 tbodyaccjerkmeanz		            14
	descriped below                 
 tbodyaccjerkstdx 		            14
	descriped below                 
 tbodyaccjerkstdy 		            14
	descriped below                 
 tbodyaccjerkstdz 		            14
	descriped below                 
 tbodygyromeanx			            14
	descriped below                 
 tbodygyromeany			            14
	descriped below                 
 tbodygyromeanz			            14
	descriped below                 
 tbodygyrostdx			            13
	descriped below                 
 tbodygyrostdy			            14
	descriped below                 
 tbodygyrostdz			            14
	descriped below                 
 tbodygyrojerkmeanx 	            14
	descriped below                 
 tbodygyrojerkmeany 	            14
	descriped below                 
 tbodygyrojerkmeanz 	            14
	descriped below                 
 tbodygyrojerkstdx		            13
	descriped below                 
 tbodygyrojerkstdy		            14
	descriped below                 
 tbodygyrojerkstdz		            13
	descriped below                 
 tbodyaccmagmean		            14
	descriped below                 
 tbodyaccmagstd			            14
	descriped below                 
 tgravityaccmagmean 	            14
	descriped below                 
 tgravityaccmagstd		            14
	descriped below                 
 tbodyaccjerkmagmean	            14
	descriped below                 
 tbodyaccjerkmagstd 	            14
	descriped below                 
 tbodygyromagmean 		            14
	descriped below                 
 tbodygyromagstd		            14
	descriped below                 
 tbodygyrojerkmagmean	            13
	descriped below                 
 tbodygyrojerkmagstd	            14
	descriped below                 
 fbodyaccmeanx			            13
	descriped below                 
 fbodyaccmeany			            14
	descriped below                 
 fbodyaccmeanz			            14
	descriped below                 
 fbodyaccstdx			            14
	descriped below                 
 fbodyaccstdy			            14
	descriped below                 
 fbodyaccstdz			            14
	descriped below                 
 fbodyaccjerkmeanx		            14
	descriped below                 
 fbodyaccjerkmeany		            14
	descriped below                 
 fbodyaccjerkmeanz		            13
	descriped below                 
 fbodyaccjerkstdx 		            14
	descriped below                 
 fbodyaccjerkstdy 		            14
	descriped below                 
 fbodyaccjerkstdz 		            14
	descriped below                    
 fbodygyromeanx			            13
	descriped below                 
 fbodygyromeany			            14
	descriped below                 
 fbodygyromeanz			            14
	descriped below                 
 fbodygyrostdx			            14
	descriped below                 
 fbodygyrostdy			            13
	descriped below                 
 fbodygyrostdz			            13
	descriped below                 
 fbodyaccmagmean		            14
	descriped below                 
 fbodyaccmagstd			            13
	descriped below
 fbodybodyaccjerkmagmean			14
	descriped below
 fbodybodyaccjerkmagstd				14
	descriped below
 fbodybodygyromagmean				14
	descriped below
 fbodybodygyromagstd				14
	descriped below
 fbodybodygyrojerkmagmean			13
	descriped below
 fbodybodygyrojerkmagstd			14
	descriped below
 activity							6..18
	activity type
						"WALKING"
						"WALKING_UPSTAIRS"
						"WALKING_DOWNSTAIRS"
						"SITTING"
						"STANDING"
						"LAYING"
````
## Description

````
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tacc-xyz and tgyro-xyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tbodyacc-xyz and tgravityacc-xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccjerk-xyz and tbodygyrojerk-xyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyacc-xyz, fbodyaccjerk-xyz, fbodygyro-xyz, fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tbodyacc-xyz
tgravityacc-xyz
tbodyaccjerk-xyz
tbodygyro-xyz
tbodygyrojerk-xyz
tbodyaccmag
tgravityaccmag
tbodyaccjerkmag
tbodygyromag
tbodygyrojerkmag
fbodyacc-xyz
fbodyaccjerk-xyz
fbodygyro-xyz
fbodyaccmag
fbodyaccjerkmag
fbodygyromag
fbodygyrojerkmag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


````

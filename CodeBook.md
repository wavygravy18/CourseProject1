#CodeBook for dataset.txt
This dataset was made from the UCI HAR Dataset, which is data collected from accelerometers from the Samsung Galaxy S smartphone.

Descriptions of the column names:

1. subject: values of 1 to 30 which indicate one of 30 volunteers

2. activity: values of walking, walking upstairs, walking 
downstairs, sitting, standing, and laying that indicate what activity the subject was performing

3. averagetimeBodyAccelarationmeanX: the average of timeBodyAccelarationmeanX for each activity and each subject
	
4-81: all of these columns contain averages of the variable that immediately follows the word “average” in the column name for each activity and subject


Complete List of Column Names
=================
The complete list of all 81 column names is below. More detailed information about what all of the variables are in further below in the “Features Selection”.

subject 
activity
averagetimeBodyAccelarationmeanX
averagetimeBodyAccelarationmeanY
averagetimeBodyAccelarationmeanZ
averagetimeGravityAccelarationmeanX
averagetimeGravityAccelarationmeanY
averagetimeGravityAccelarationmeanZ
averagetimeBodyAccelarationJerkmeanX
averagetimeBodyAccelarationJerkmeanY
averagetimeBodyAccelarationJerkmeanZ
averagetimeBodyGyromeanX
averagetimeBodyGyromeanY
averagetimeBodyGyromeanZ
averagetimeBodyGyroJerkmeanX
averagetimeBodyGyroJerkmeanY
averagetimeBodyGyroJerkmeanZ
averagetimeBodyAccelarationMagmean
averagetimeGravityAccelarationMagmean
averagetimeBodyAccelarationJerkMagmean
averagetimeBodyGyroMagmean
averagetimeBodyGyroJerkMagmean
averagefrequencydomainsignalsBodyAccelarationmeanX
averagefrequencydomainsignalsBodyAccelarationmeanY averagefrequencydomainsignalsBodyAccelarationmeanZ averagefrequencydomainsignalsBodyAccelarationmeanFreqX
averagefrequencydomainsignalsBodyAccelarationmeanFreqY
averagefrequencydomainsignalsBodyAccelarationmeanFreqZ
averagefrequencydomainsignalsBodyAccelarationJerkmeanX
averagefrequencydomainsignalsBodyAccelarationJerkmeanY
averagefrequencydomainsignalsBodyAccelarationJerkmeanZ
averagefrequencydomainsignalsBodyAccelarationJerkmeanFreqX
averagefrequencydomainsignalsBodyAccelarationJerkmeanFreqY
averagefrequencydomainsignalsBodyAccelarationJerkmeanFreqZ
averagefrequencydomainsignalsBodyGyromeanX
averagefrequencydomainsignalsBodyGyromeanY
averagefrequencydomainsignalsBodyGyromeanZ
averagefrequencydomainsignalsBodyGyromeanFreqX
averagefrequencydomainsignalsBodyGyromeanFreqY
averagefrequencydomainsignalsBodyGyromeanFreqZ
averagefrequencydomainsignalsBodyAccelarationMagmean
averagefrequencydomainsignalsBodyAccelarationMagmeanFreq
averagefrequencydomainsignalsBodyAccelarationJerkMagmean
averagefrequencydomainsignalsBodyAccelarationJerkMagmeanFreq
averagefrequencydomainsignalsBodyGyroMagmean
averagefrequencydomainsignalsBodyGyroMagmeanFreq
averagefrequencydomainsignalsBodyGyroJerkMagmean
averagefrequencydomainsignalsBodyGyroJerkMagmeanFreq
averagetimeBodyAccelarationstdX
averagetimeBodyAccelarationstdY
averagetimeBodyAccelarationstdZ
averagetimeGravityAccelarationstdX
averagetimeGravityAccelarationstdY
averagetimeGravityAccelarationstdZ
averagetimeBodyAccelarationJerkstdX
averagetimeBodyAccelarationJerkstdY
averagetimeBodyAccelarationJerkstdZ
averagetimeBodyGyrostdX
averagetimeBodyGyrostdY
averagetimeBodyGyrostdZ
averagetimeBodyGyroJerkstdX
averagetimeBodyGyroJerkstdY
averagetimeBodyGyroJerkstdZ
averagetimeBodyAccelarationMagstd
averagetimeGravityAccelarationMagstd
averagetimeBodyAccelarationJerkMagstd
averagetimeBodyGyroMagstd
averagetimeBodyGyroJerkMagstd
averagefrequencydomainsignalsBodyAccelarationstdX
averagefrequencydomainsignalsBodyAccelarationstdY
averagefrequencydomainsignalsBodyAccelarationstdZ
averagefrequencydomainsignalsBodyAccelarationJerkstdX
averagefrequencydomainsignalsBodyAccelarationJerkstdY
averagefrequencydomainsignalsBodyAccelarationJerkstdZ
averagefrequencydomainsignalsBodyGyrostdX
averagefrequencydomainsignalsBodyGyrostdY
averagefrequencydomainsignalsBodyGyrostdZ
averagefrequencydomainsignalsBodyAccelarationMagstd
averagefrequencydomainsignalsBodyBodyAccelarationJerkMagstd
averagefrequencydomainsignalsBodyBodyGyroMagstd
averagefrequencydomainsignalsBodyBodyGyroJerkMagstd


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAccXYZ
tGravityAccXYZ
tBodyAccJerkXYZ
tBodyGyroXYZ
tBodyGyroJerkXYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAccXYZ
fBodyAccJerkXYZ
fBodyGyroXYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation
mad: Median absolute deviation 
max: Largest value in array
min: Smallest value in array
sma: Signal magnitude area
energy: Energy measure. Sum of the squares divided by the number of values. 
iqr: Interquartile range 
entropy: Signal entropy
arCoeff: Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds: index of the frequency component with largest magnitude
meanFreq: Weighted average of the frequency components to obtain a mean frequency
skewness: skewness of the frequency domain signal 
kurtosis: kurtosis of the frequency domain signal 
bandsEnergy: Energy of a frequency interval within the 64 bins of the FFT of each window.
angle: Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

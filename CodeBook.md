#CodeBook for dataset.txt

This dataset was made from the UCI HAR Dataset, which is data collected from accelerometers from the Samsung Galaxy S smartphone.<br />
<br />
Descriptions of the column names:<br />

1. subject: values of 1 to 30 which indicate one of 30 volunteers

2. activity: values of walking, walking upstairs, walking 
downstairs, sitting, standing, and laying that indicate what activity the subject was performing

3. averagetimeBodyAccelarationmeanX: the average of timeBodyAccelarationmeanX for each activity and each subject
	
4. to 81: All of these columns contain averages of the variable that immediately follows the word “average” in the column name for each activity and subject


##Complete List of Column Names

The complete list of all 81 column names is below. More detailed information about what all of the variables are in further below in the “Features Selection”.<br />
<br />
subject<br /> 
activity<br />
averagetimeBodyAccelarationmeanX<br />
averagetimeBodyAccelarationmeanY<br />
averagetimeBodyAccelarationmeanZ<br />
averagetimeGravityAccelarationmeanX<br />
averagetimeGravityAccelarationmeanY<br />
averagetimeGravityAccelarationmeanZ<br />
averagetimeBodyAccelarationJerkmeanX<br />
averagetimeBodyAccelarationJerkmeanY<br />
averagetimeBodyAccelarationJerkmeanZ<br />
averagetimeBodyGyromeanX<br />
averagetimeBodyGyromeanY<br />
averagetimeBodyGyromeanZ<br />
averagetimeBodyGyroJerkmeanX<br />
averagetimeBodyGyroJerkmeanY<br />
averagetimeBodyGyroJerkmeanZ<br />
averagetimeBodyAccelarationMagmean<br />
averagetimeGravityAccelarationMagmean<br />
averagetimeBodyAccelarationJerkMagmean<br />
averagetimeBodyGyroMagmean<br />
averagetimeBodyGyroJerkMagmean<br />
averagefrequencydomainsignalsBodyAccelarationmeanX<br />
averagefrequencydomainsignalsBodyAccelarationmeanY<br />averagefrequencydomainsignalsBodyAccelarationmeanZ<br />averagefrequencydomainsignalsBodyAccelarationmeanFreqX<br />
averagefrequencydomainsignalsBodyAccelarationmeanFreqY<br />
averagefrequencydomainsignalsBodyAccelarationmeanFreqZ<br />
averagefrequencydomainsignalsBodyAccelarationJerkmeanX<br />
averagefrequencydomainsignalsBodyAccelarationJerkmeanY<br />
averagefrequencydomainsignalsBodyAccelarationJerkmeanZ<br />
averagefrequencydomainsignalsBodyAccelarationJerkmeanFreqX<br />
averagefrequencydomainsignalsBodyAccelarationJerkmeanFreqY<br />
averagefrequencydomainsignalsBodyAccelarationJerkmeanFreqZ<br />
averagefrequencydomainsignalsBodyGyromeanX<br />
averagefrequencydomainsignalsBodyGyromeanY<br />
averagefrequencydomainsignalsBodyGyromeanZ<br />
averagefrequencydomainsignalsBodyGyromeanFreqX<br />
averagefrequencydomainsignalsBodyGyromeanFreqY<br />
averagefrequencydomainsignalsBodyGyromeanFreqZ<br />
averagefrequencydomainsignalsBodyAccelarationMagmean<br />
averagefrequencydomainsignalsBodyAccelarationMagmeanFreq<br />
averagefrequencydomainsignalsBodyAccelarationJerkMagmean<br />
averagefrequencydomainsignalsBodyAccelarationJerkMagmeanFreq<br />
averagefrequencydomainsignalsBodyGyroMagmean<br />
averagefrequencydomainsignalsBodyGyroMagmeanFreq<br />
averagefrequencydomainsignalsBodyGyroJerkMagmean<br />
averagefrequencydomainsignalsBodyGyroJerkMagmeanFreq<br />
averagetimeBodyAccelarationstdX<br />
averagetimeBodyAccelarationstdY<br />
averagetimeBodyAccelarationstdZ<br />
averagetimeGravityAccelarationstdX<br />
averagetimeGravityAccelarationstdY<br />
averagetimeGravityAccelarationstdZ<br />
averagetimeBodyAccelarationJerkstdX<br />
averagetimeBodyAccelarationJerkstdY<br />
averagetimeBodyAccelarationJerkstdZ<br />
averagetimeBodyGyrostdX<br />
averagetimeBodyGyrostdY<br />
averagetimeBodyGyrostdZ<br />
averagetimeBodyGyroJerkstdX<br />
averagetimeBodyGyroJerkstdY<br />
averagetimeBodyGyroJerkstdZ<br />
averagetimeBodyAccelarationMagstd<br />
averagetimeGravityAccelarationMagstd<br />
averagetimeBodyAccelarationJerkMagstd<br />
averagetimeBodyGyroMagstd<br />
averagetimeBodyGyroJerkMagstd<br />
averagefrequencydomainsignalsBodyAccelarationstdX<br />
averagefrequencydomainsignalsBodyAccelarationstdY<br />
averagefrequencydomainsignalsBodyAccelarationstdZ<br />
averagefrequencydomainsignalsBodyAccelarationJerkstdX<br />
averagefrequencydomainsignalsBodyAccelarationJerkstdY<br />
averagefrequencydomainsignalsBodyAccelarationJerkstdZ<br />
averagefrequencydomainsignalsBodyGyrostdX<br />
averagefrequencydomainsignalsBodyGyrostdY<br />
averagefrequencydomainsignalsBodyGyrostdZ<br />
averagefrequencydomainsignalsBodyAccelarationMagstd<br />
averagefrequencydomainsignalsBodyBodyAccelarationJerkMagstd<br />
averagefrequencydomainsignalsBodyBodyGyroMagstd<br />
averagefrequencydomainsignalsBodyBodyGyroJerkMagstd<br />


##Feature Selection 

In the dataset.txt, t has been expanded to "time", Acc has been expanded to "Accelaration", and f has been expanded to "frequency domain signals.<br />

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. <br />

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).<br />

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). <br />

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.<br />
<br />
tBodyAccXYZ<br />
tGravityAccXYZ<br />
tBodyAccJerkXYZ<br />
tBodyGyroXYZ<br />
tBodyGyroJerkXYZ<br />
tBodyAccMag<br />
tGravityAccMag<br />
tBodyAccJerkMag<br />
tBodyGyroMag<br />
tBodyGyroJerkMag<br />
fBodyAccXYZ<br />
fBodyAccJerkXYZ<br />
fBodyGyroXYZ<br />
fBodyAccMag<br />
fBodyAccJerkMag<br />
fBodyGyroMag<br />
fBodyGyroJerkMag<br />
<br />
The set of variables that were estimated from these signals are: <br />
<br />
mean: Mean value<br />
std: Standard deviation<br />
mad: Median absolute deviation <br />
max: Largest value in array<br />
min: Smallest value in array<br />
sma: Signal magnitude area<br />
energy: Energy measure. Sum of the squares divided by the number of values. <br />
iqr: Interquartile range <br />
entropy: Signal entropy<br />
arCoeff: Autorregresion coefficients with Burg order equal to 4<br />
correlation: correlation coefficient between two signals<br />
maxInds: index of the frequency component with largest magnitude<br />
meanFreq: Weighted average of the frequency components to obtain a mean frequency<br />
skewness: skewness of the frequency domain signal <br />
kurtosis: kurtosis of the frequency domain signal <br />
bandsEnergy: Energy of a frequency interval within the 64 bins of the FFT of each window.<br />
angle: Angle between to vectors.<br />
<br />
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:<br />
<br />
gravityMean<br />
tBodyAccMean<br />
tBodyAccJerkMean<br />
tBodyGyroMean<br />
tBodyGyroJerkMean<br />
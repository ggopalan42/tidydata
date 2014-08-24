## Codebook for Tidydata

This codebook describes the type, Units and a Description for each column of the tidy data set that is created by the R script: run_analysis()

#### Types:
  * **activity**: integer
  * **subjectnum**: string
  * **All Others**: numeric

#### Units:
  * **activity**: Not applicable
  * **subjectnum**: Not applicable
  * **All Others**: Hz

#### Value Range:
  * **activity**: One of: walking, walking_upstairs, walking_downstairs, sitting, standing, laying
  * **subjectnum**: Between 1 and 30
  * **All Others**: Between -1 and 1

#### Description:
  * **activity**   - The activity performed by the subject when the measurements were taken.
  * **subjectnum**    - The subject on whom the corresponding measurement was performed.
  * **TimeBodyAccMeanX/Y/Z**    - Average of the Means of Time Domain Signals from the body motion component of the Accelerometer - along X/Y/Z Axis
  * **TimeBodyAccStdX/Y/Z**     - Average of the Standard Deviations of Time Domain Signals from the body motion component of the Accelerometer - along X/Y/Z Axis
  * **TimeGravityAccMeanX/Y/Z** - Average of the Means of Time Domain Signals from the gravitational component of the Accelerometer - along X/Y/Z Axis
  * **TimeGravityAccStdX/Y/Z**  - Average of the Standard Deviations of Time Domain Signals from the gravitational component of the Accelerometer - along X/Y/Z Axis
  * **TimeBodyAccJerkMeanX/Y/Z**  - Average of the Means of Time Domain Jerk Signal from the body motion component of the Accelerometer - along X/Y/Z Axis
  * **TimeBodyAccJerkStdX/Y/Z** - Average of the Standard Deviations of Time Domain Jerk Signal from the body motion component of the Accelerometer - along X/Y/Z Axis
  * **TimeBodyGyroMeanX/Y/Z**   - Average of the Means of Time Domain Signals from the body motion component of the Gyroscope - along X/Y/Z Axis
  * **TimeBodyGyroStdX/Y/Z**    - Average of the Standard Deviations of Time Domain Signals from the body motion component of the Gyroscope - along X/Y/Z Axis
  * **TimeBodyGyroJerkMeanX/Y/Z** - Average of the Means of Time Domain Jerk Signals from the body motion component of the Gyroscope - along X/Y/Z Axis
  * **TimeBodyGyroJerkStdX/Y/Z**  - Average of the Standard Deviations of Time Domain Jerk Signals from the body motion component of the Gyroscope - along X/Y/Z Axis
  * **TimeBodyAccMagMean** - Average of the Means of Magnitude of Time Domain Signal Vectors from the body motion component of the Accelerometer 
  * **TimeBodyAccMagStd** - Average of the Standard Deviations of Magnitude of Time Domain Signal Vectors from the body motion component of the Accelerometer 
  * **TimeGravityAccMagMean** - Average of the Means of Magnitude of Time Domain Signal Vectors from the gravitational component of the Accelerometer 
  * **TimeGravityAccMagStd** - Average of the Standard Deviations of Magnitude of Time Domain Signal Vectors from the gravitational component of the Accelerometer 
  * **TimeBodyAccJerkMagMean** - Average of the Means of Magnitude of Time Domain Jerk Signal Vectors from the body motion component of the Accelerometer 
  * **TimeBodyAccJerkMagStd** - Average of the Standard Deviations of Magnitude of Time Domain Jerk Signal Vectors from the body motion component of the Accelerometer 
  * **TimeBodyGyroMagMean** - Average of the Means of Magnitude of Time Domain Signal Vectors from the body motion component of the Gyroscope 
  * **TimeBodyGyroMagStd** - Average of the Standard Deviations of Magnitude of Time Domain Signal Vectors from the body motion component of the Gyroscope 
  * **TimeBodyGyroJerkMagMean** - Average of the Means of Magnitude of Time Domain Jerk Signal Vectors from the body motion component of the Gyroscope 
  * **TimeBodyGyroJerkMagStd** - Average of the Standard Deviations of Magnitude of Time Domain Jerk Signal Vectors from the body motion component of the Gyroscope 
  * **FreqBodyAccMeanX/Y/Z** - Average of the Mean of Frequency Domain Signals from the body motion component of the Accelerometer - along X/Y/Z Axis
  * **FreqBodyAccStdX/Y/Z** - Average of the Standard Deviation of Frequency Domain Signals from the body motion component of the Accelerometer - along X/Y/Z Axis
  * **FreqBodyAccMeanFreqX/Y/Z** - Average of the Mean Frequency of Frequency Domain Signals from the body motion component of the Accelerometer - along X/Y/Z Axis
  * **FreqBodyAccJerkMeanX/Y/Z** - Average of the Mean of Frequency Domain Jerk Signals from the body motion component of the Accelerometer - along X/Y/Z Axis
  * **FreqBodyAccJerkStdX/Y/Z** - Average of the Standard Deviation of Frequency Domain Jerk Signals from the body motion component of the Accelerometer - along X/Y/Z Axis
  * **FreqBodyAccJerkMeanFreqX/Y/Z** - Average of the Mean Frequency of Frequency Domain Jerk Signals from the body motion component of the Accelerometer - along X/Y/Z Axis
  * **FreqBodyGyroMeanX/Y/Z** - Average of the Mean of Frequency Domain Signals from the body motion component of the Gyroscope - along X/Y/Z Axis
  * **FreqBodyGyroStdX/Y/Z** - Average of the Standard Deviation of Frequency Domain Signals from the body motion component of the Gyroscope - along X/Y/Z Axis
  * **FreqBodyGyroMeanFreqX/Y/Z** - Average of the Mean Frequency of Frequency Domain Signals from the body motion component of the Gyroscope - along X/Y/Z Axis
  * **FreqBodyAccMagMean** - Average of the Mean of Magnitude of Frequency Domain Signal Vectors from the body motion component of the Accelerometer 
  * **FreqBodyAccMagStd** - Average of the Standard Deviation of Magnitude of Frequency Domain Signal Vectors from the body motion component of the Accelerometer 
  * **FreqBodyAccMagMeanFreq** - Average of the Mean Frequency of Magnitude of Frequency Domain Signal Vectors from the body motion component of the Accelerometer 
  * **FreqBodyBodyAccJerkMagMean** - Average of the Mean of Magnitude of Frequency Domain Jerk Signal Vectors from the body motion component of the Accelerometer 
  * **FreqBodyBodyAccJerkMagStd** - Average of the Standard Deviation of Magnitude of Frequency Domain Jerk Signal Vectors from the body motion component of the Accelerometer 
  * **FreqBodyBodyAccJerkMagMeanFreq** - Average of the Mean Frequency of Magnitude of Frequency Domain Jerk Signal Vectors from the body motion component of the Accelerometer 
  * **FreqBodyBodyGyroMagMean** - Average of the Mean of Magnitude of Frequency Domain Signal Vectors from the body motion component of the Gyroscope 
  * **FreqBodyBodyGyroMagStd** - Average of the Standard Deviation of Magnitude of Frequency Domain Signal Vectors from the body motion component of the Gyroscope 
  * **FreqBodyBodyGyroMagMeanFreq** - Average of the Mean Frequency of Magnitude of Frequency Domain Signal Vectors from the body motion component of the Gyroscope 
  * **FreqBodyBodyGyroJerkMagMean** - Average of the Mean of Magnitude of Frequency Domain Jerk Signal Vectors from the body motion component of the Gyroscope 
  * **FreqBodyBodyGyroJerkMagStd** - Standard Deviation of Magnitude of Frequency Domain Jerk Signal Vectors from the body motion component of the Gyroscope 
  * **FreqBodyBodyGyroJerkMagMeanFreq** - Mean Frequency of Magnitude of Frequency Domain Jerk Signal Vectors from the body motion component of the Gyroscope 

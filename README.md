# Tidy Dataset of Mean and Std Values

## Data from: Human Activity Recognition Using Smartphones Dataset


The R script contained in this repo will read in the training and test datasets from Samsung's *Human Activity Recognition Using Smartphones Dataset* (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and write out a tidy data set containing the average for the mean and standard deviation values for each of the 30 subjects and the 6 activities they perform.

The name of this script is run_analysis.R and it is invoked in R as: run_analysis()

Assumptions:
    1. The training, test, subject, features and activity name data is availablein the same director from which the run_analysis() script is run. 

Notes:
    1. Feature Names: In general, feature names should be all lower case and without _, ( and ). However, in this case, because of the length of the variables, I have decided to use the Camel case for the variable names. (eg: its much harder to read: freqbodybodygyrojerkmagstimed than FreqBodyBodyGyroJerkMagSTimed)
    2. The leading "f" of each variable has been changed to read "Freq"
    3. The leading "t" of each variable has been changed to read "Time"

  The tidy dataset is arranged as: TBD


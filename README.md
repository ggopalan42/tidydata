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

### run_analysis script:

The major steps in the script is as follows:
1. Read in the test, training, subject and features files
2. Combines the data:
    a. Simply column bind the activity, subject and measurement sets of the training data
    b. Simply column bind the activity, subject and measurement sets of the test data
    c. Finally row bind the training and test data together
3. The script then names all of the columns of the combined data set using the names in the features.txt file. It names the first and second column as activity and subjectnum since that was the order in which the data were combined.
4. It then extracts the columns that contain the strings "mean" and "std". It uses grep for this.
5. The script then starts tidying up the data:
    a. It first names all of the activities with useful names rather than numbers.
    b. It then cleans up the columns names trying as much as practical to stick to tidy data naming conventions
6. In the final steps, the script computes the average of each column of the data for every combination of subject and activity
7. It finally writes out this cleaned up data set to a file called: tidy2.txt in the current working directory



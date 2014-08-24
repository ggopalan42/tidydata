# This R script reads in the training and test data sets,
# merges them together, extracts mean and std values for
# all subjects and activities.
# It then tidies up the data, providing reasonable names
# for each variable and activity. 
# Finally the script calculates the average of the means and
# std for each of the acitvity and subject combination.
# It then writes out this data to a file called tidy2.txt
run_analysis <- function () {
    # Note: The script assumes that the data are available in the 
    # same dir that the script is run from
    # Read in the data, including the features.txt file
    print("Reading in data")
    x_train   <- read.table("./X_train.txt")
    y_train   <- read.table("./y_train.txt")
    sub_train <- read.table("./subject_train.txt")
    x_test    <- read.table("./X_test.txt")
    y_test    <- read.table("./y_test.txt")
    sub_test  <- read.table("./subject_test.txt")
    features<-read.table("features.txt",stringsAsFactors=FALSE)
    colnames(features)<-c("Index","FeatureName")
    # activity_name <- read.table("activity_labels.txt",stringsAsFactors=FALSE)

    print("Merging all data")
    # Combine the test and train data. 
    # Column wise combine the training data
    ysx_train <- cbind(y_train,sub_train,x_train)

    # Column wise combine the test data
    ysx_test  <- cbind(y_test,sub_test,x_test)

    # Row wise merge test and training data
    all_raw <- rbind(ysx_train, ysx_test)

    print("Naming all columns")
    # Name the columns of the combined data set 
    colnames(all_raw) <- c("activity", "subjectnum", features$FeatureName)

    print("Extracting only mean and std columns")
    # Extract out only the mean and std columns along with the
    # activity and subject columns
    tidy1<-all_raw[,c(1,2,grep("mean|std",colnames(all_raw)))]

    print("Tidying up data")
    # Change all of the Activity numbers to names
    # Currently this is done in a hard coded way. A future improvement
    # would be to automatically name them based on the activity_names.txt file
    tidy1$activity[tidy1$activity == 1] <- "walking"
    tidy1$activity[tidy1$activity == 2] <- "walking_upstairs"
    tidy1$activity[tidy1$activity == 3] <- "walking_downstairs"
    tidy1$activity[tidy1$activity == 4] <- "sitting"
    tidy1$activity[tidy1$activity == 5] <- "standing"
    tidy1$activity[tidy1$activity == 6] <- "laying"

    # Clean up features names per tidy data guidelines. In this case,
    # remove the characters: -,( and ) from colnames. Also change
    # mean and std to Camel case so it more readable. Finally, the
    # cryptic f & t are changed to Freq and Time so its clear which
    # domain the measurement is made
    colnames(tidy1)<-sub("mean","Mean",colnames(tidy1))
    colnames(tidy1)<-sub("std","Std",colnames(tidy1))
    colnames(tidy1)<-gsub("-|\\()","",colnames(tidy1))
    colnames(tidy1)[3:81]<-sub("^f","Freq",colnames(tidy1[3:81]))
    colnames(tidy1)[3:81]<-sub("^t","Time",colnames(tidy1[3:81]))

    # Now create a second tidy dataset that computes the mean of
    # each of the meand and std variables for every combination
    # of subject and activity
    print("Computing averages for each combination of activity and subject")
    tidy2<-aggregate(. ~ activity + subjectnum, data = tidy1, mean)

    # Write out the final tidy data
    print("Writing final tidy data to tidy2.txt")
    write.table(tidy2,"tidy2.txt",row.names=FALSE)
}

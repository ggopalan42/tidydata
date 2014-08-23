# TBD: Opening Comment
run_analysis <- function () {

    # Note: The script assumes that the data are available in the 
    # same dir that the script is run from
    # Read in the data, including the features.txt file
    x_train   <- read.table("./X_train.txt")
    y_train   <- read.table("./y_train.txt")
    sub_train <- read.table("./subject_train.txt")
    x_test    <- read.table("./X_test.txt")
    y_test    <- read.table("./y_test.txt")
    sub_test  <- read.table("./subject_test.txt")
    features<-read.table("features.txt",stringsAsFactors=FALSE)
    colnames(features)<-c("Index","FeatureName")
    # activity_name <- read.table("activity_labels.txt",stringsAsFactors=FALSE)

    # Combine the test and train data. 
    # Column wise combine the training data
    ysx_train <- cbind(y_train,sub_train,x_train)

    # Column wise combine the test data
    ysx_test  <- cbind(y_test,sub_test,x_test)

    # Row wise merge test and training data
    all_raw <- rbind(ysx_train, ysx_test)

    # Name the columns of the combined data set 
    colnames(all_raw) <- c("activity", "subjectnum", features$FeatureName)

    # Extract out only the mean and std columns along with the
    # activity and subject columns
    tidy1<-all_raw[,c(1,2,grep("mean|std",colnames(all_raw)))]

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
    # change all col names to lower and remove the characters: -,( and )
    colnames(tidy1)<-tolower(colnames(tidy1))
    colnames(tidy1)<-gsub("-|\\()","",colnames(tidy1))
}

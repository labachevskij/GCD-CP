# We assume the files to be in the same folder as the code
# setwd should be run before sourcing this file
library(dplyr)

# We import the training data in three steps: first the subjects, 
# then the activities then the data itself. We bind the data together 
# adding columns on the right of the table.
# Finally we provide descriptive names to the first two columns.
train <- read.table(file = "UCI HAR Dataset/train/subject_train.txt")
train <- cbind(train, 
               read.table("UCI HAR Dataset/train/y_train.txt"))
train <- cbind(train, 
               read.table("UCI HAR Dataset/train/X_train.txt"))
names(train)[1:2]<- c("Subject", "Activity")

# We do the same as above on the test data.
test <- read.table(file = "UCI HAR Dataset/test/subject_test.txt")
test <- cbind(test, read.table("UCI HAR Dataset/test/y_test.txt"))
test <- cbind(test, read.table("UCI HAR Dataset/test/X_test.txt"))
names(test)[1:2]<- c("Subject", "Activity")

# As requested by point 1 we merge together the data, addong the 
# testing data as rows below the training data
merged_data <- rbind(train, test)
# Remove past data we won't need
rm(train, test)

# Now for point 2 we accedd the codebook features.txt, we get the 
# numbers of the columns we are interested in and keep only those
features <- read.table("UCI HAR Dataset/features.txt", 
                       colClasses = c("numeric","character"))
means <- grep("mean\\(\\)",features$V2)
stds <- grep("std\\(\\)",features$V2)
# The +2 in the following line comes from the fact that we added X 
# data from column 3 onwards
tokeep <- c(1,2,sort(c(means,stds)) + 2)

# For simplicity we can start working on point 4 here
named_vars <- as.character(features$V2[sort(c(means,stds))])
names(merged_data)[sort(c(means,stds))+2] <- named_vars
# Alternative: later on 
# names(mdr)[3:81]<-as.character(named_vars)
# Not as clean

# Here we complete point 2, required data is saved in mdr 
# dataframe
mdr <- merged_data[,tokeep]

# rm what is not needed anymore
rm(merged_data, means, stds, tokeep, named_vars, features)

# Here we attack point 3, using the activity labels provided.
labels <- read.table("UCI HAR Dataset/activity_labels.txt", 
                     colClasses = c("character","character"))
mdr$Activity <- as.character(mdr$Activity)
for(l in labels$V1){
  mdr$Activity[mdr$Activity == l] <- labels$V2[labels$V1 == l]
}
rm(labels)

# Here we label the data set with descriptive names, starting from 
# the names given above. We manipulate them as strings in order to 
# have more human readable labels
tmp_names <- gsub("^([ft])(Body|Gravity)(Body)?(Acc|Gyro)(JerkMag|Jerk|Mag)?-(mean|std)\\(\\)-?(X|Y|Z)?",
                  "\\2 \\4 \\5 \\6 \\7 (\\1)",names(mdr))
tmp_names <- gsub("Acc", "Accelerometer", tmp_names)
tmp_names <- gsub("Gyro", "Gyroscope", tmp_names)
tmp_names <- gsub("Mag", "Magnitude", tmp_names)
tmp_names <- gsub("JerkMag", "Jerk Mag", tmp_names)
tmp_names <- gsub("\\(f\\)", "(frequency)", tmp_names)
tmp_names <- gsub("\\(t\\)", "(time)", tmp_names)
tmp_names <- gsub("(X|Y|Z)", "\\1-axis", tmp_names)
tmp_names <- gsub("  ", " ", tmp_names)

names(mdr) <- tmp_names
rm(tmp_names)

# Now we only need step 5 to complete the project
# To ease the job we transform the dataframe into a tbl object (dplyr 
# package). Then we use group_by to group data by the pairs Subject - 
# Activity and summarise_each to apply the mean to every other column

new_mer_dat <- tbl_df(mdr) %>%
    group_by(Subject, Activity) %>% 
    summarise_each(funs(mean))
# We remove the unused mdr
rm(mdr)

# We write the table on file as requested
write.table(x = new_mer_dat, file = "tidydf.txt", row.name=FALSE)
# And we provide the same object as output of the script
print.table(x = new_mer_dat, row.name=FALSE)


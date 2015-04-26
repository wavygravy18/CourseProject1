## This script saves a dataset called dataset.txt

## Step 1: Merges the training and test sets to create one data set

## Make list of the files we will be working with
filenames1 <- list.files(path="./", pattern="*txt", full.names=TRUE)
filenames2 <- list.files(path="./test", pattern="*txt", full.names=TRUE)
filenames3 <- list.files(path="./train", pattern="*txt", full.names=TRUE)
filenames <- c(filenames1, filenames2, filenames3)
filenames <- filenames[!filenames %in% c(".//features_info.txt", ".//README.txt")]

## Read files into a list of data frames
filelist <- lapply(filenames, read.table)

## Make variable names more managable and in a form that R will work with
## Removes characters that are not numbers or letters and unnecessary words
variables <- gsub("[[:punct:]]", "", filenames)
variables <- sub("train", "", variables)
variables <- sub("test", "", variables)
variables <- sub("Inertial Signals", "", variables)
variables <- sub("txt", "", variables)

## Name each data frame in list with variable names
names(filelist) <- variables

## Turn list of data frames into individual data frames in global environment
list2env(filelist, .GlobalEnv)

library(dplyr)

## Change column names
names(subjecttrain) <- "subject"
names(subjecttest) <- "subject"
## Add a column on each df called set with values of "training" and "test"
subjecttrain <- subjecttrain %>% mutate(set = "training")
subjecttest <- subjecttest %>% mutate(set = "test")
## Make data frame of subjects combining training and test sets
subjectdf <- rbind(subjecttrain, subjecttest)

## Change column names
names(ytrain) <- "activity"
names(ytest) <- "activity"
## Make data frame of activity combining train and test sets
activitydf <- rbind(ytrain, ytest)

## Change features data frame column 2 to factor
featuresnames <- features[['V2']]
## Remove nonletters
featuresnames <- gsub("[[:punct:]]", "", featuresnames)
## Change column names in Xtrain and Xtest to featuresnames
names(Xtrain) <- featuresnames
names(Xtest) <- featuresnames
## Make dataframe of features combining train and test sets
Xdf <- rbind(Xtrain, Xtest)

## Create big data frame including subject, set, activity, and features columns
df <- cbind(subjectdf, activitydf, Xdf)


## 2.Extracts only the measurements on the mean and standard deviation for each 
## measurement.
## Selects the features names with the words mean and std in them
means <- grep("mean", featuresnames)
stds <- grep("std", featuresnames)
meanstd <- c(means, stds)
positions <- c(1:3, meanstd + 3)
df <- df[,positions]

##3.Uses descriptive activity names to name the activities in the data set
df$activity[df$activity=="1"] <- "walking"
df$activity[df$activity=="2"] <- "walking upstairs"
df$activity[df$activity=="3"] <- "walking downstairs"
df$activity[df$activity=="4"] <- "sitting"
df$activity[df$activity=="5"] <- "standing"
df$activity[df$activity=="6"] <- "laying"

##4.Appropriately labels the data set with descriptive variable names.
## Expanded acc, t, f, and got rid of extra Bodys
## Already got rid of the funny characters in step 1
colnamesdf <- colnames(df)
colnamesdf <- sub("Acc", "Accelaration", colnamesdf)
colnamesdf[4:23] <- sub("t", "time", colnamesdf[4:23])
colnamesdf[50:69] <- sub("t", "time", colnamesdf[50:69])
colnamesdf[24:49] <- sub("f", "frequencydomainsignals", colnamesdf[24:49])
colnamesdf[70:82] <- sub("f", "frequencydomainsignals", colnamesdf[70:82])
colnamesdf[44:49] <- sub("Body", "", colnamesdf[44:49])
## Put the descriptive names as the column names
colnames(df) <- colnamesdf
## Example of descriptive column name is "timeBodyAccelarationmeanX"

##5.From the data set in step 4, creates a second, independent tidy data set 
##with the average of each variable for each activity and each subject.
bygroups <- group_by(df, subject, activity)
df1 <- summarise_each(bygroups, funs(mean), -(subject:activity))
df1colnames <- colnames(df1)
colnames3to81 <- df1colnames[3:81]
## Put "average" in front of the features variables to be more descriptive
## For example, "averagetimeBodyAccelarationmeanX"
colnames3to81 <- paste("average", colnames3to81, sep="")
df1colnames = c("subject", "activity", colnames3to81)
## df1 is the second, independent tidy data set
names(df1) <- df1colnames
## Saves the data frame as a txt file in your working directory
write.table(df1, file="./dataset.txt", row.name=FALSE)
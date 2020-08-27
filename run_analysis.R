library(data.table)
library(dplyr)

#download .zip and unzip
url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "Datasets", method = "curl") #Linux SO
unzip("Datasets")

features <- fread("UCI HAR Dataset/features.txt")
df.test <- fread("UCI HAR Dataset/test/X_test.txt")
colnames(df.test) <- features$V2

act.test <- fread("UCI HAR Dataset/test/y_test.txt")
subjects.test <- fread("UCI HAR Dataset/test/subject_test.txt")

#Full TEST Dataframe
df.test <- cbind(df.test, "activity" = act.test$V1, "subject" = subjects.test$V1)

df.train <- fread("UCI HAR Dataset/train/X_train.txt")
act.train <- fread("UCI HAR Dataset/train/y_train.txt")
subjects.train <- fread("UCI HAR Dataset/train/subject_train.txt")

#Full TRAIN Dataframe
df.train <- cbind(df.train, "activity" = act.train$V1, "subject" = subjects.train$V1)

# Step 1: Merge Test and Train datasets
totalDT <- rbind(df.test, df.train, use.names = FALSE)

# Step 2: Extracts only the measurements on the mean and standard deviation       
col.extract <- totalDT[,grep("mean\\(|std\\(|activity$|subject$", names(totalDT))]
dt2 <- totalDT[,..col.extract]

# Step 3: Uses descriptive activity names
activity_labels <- c("WALKING", "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS",
                     "SITTING", "STANDING", "LAYING")
dt2 %>% mutate(activity = activity_labels[activity]) -> dt2

# Step 4: Appropriately labels the data set with descriptive variable names.
dt2 %>% rename_all(list(~ gsub("\\(\\)", "",.))) %>% 
        rename_all(list(~ gsub("^t", "time",.))) %>%
        rename_all(list(~ gsub("^f", "freq",.))) -> dt2use

# Step 5: Create data set with the average of each variable for each activity and each subject.

dt2use %>% group_by(subject,activity) %>% summarize_all(list(~ mean(., na.rm = T))) -> df.tidy

write.table(df.tidy, file = "Summary_dataset.txt", row.name=FALSE)




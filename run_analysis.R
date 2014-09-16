#1. Merges the training and the test sets to create one data set:
rm(list=ls()) 
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
X <- rbind(x_train, x_test)
rm(x_train)
rm(x_test)
X #Is a dataframe with dimensions 10,299 x 561


#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
index <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 
           253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543)
measures <- X[,index]
rm(X)
measures #A dataframe with only the means and standard deviations of the X data frame 
         #Its dimesions are 10299 x 66

#3. Uses descriptive activity names to name the activities in the data set:
activitiesTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
activitiesTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
activities <- rbind(activitiesTrain, activitiesTest)
Z <- cbind(activities, measures)
Z$V1 <- gsub("1", "WALKING", Z$V1)
Z$V1 <- gsub("2", "WALKING_UPSTAIRS", Z$V1)
Z$V1 <- gsub("3", "WALKING_DOWNSTAIRS", Z$V1)
Z$V1 <- gsub("4", "SITTING", Z$V1)
Z$V1 <- gsub("5", "STANDING", Z$V1)
Z$V1 <- gsub("6", "LAYING", Z$V1)
rm(activitiesTrain,activitiesTest,activities, measures)
Z #A data frame taken from 'measures' but with descreptive activity names

#4. Appropriately labels the data set with descriptive variable names. 
V <- read.table("./UCI HAR Dataset/features.txt")
variables <- V[index, 2]
variable_names <- c("activities", as.character(variables)) 
variable_names <- gsub("^t", "TimeDomainSignal",variable_names)
variable_names <- gsub("^f", "FrequencyDomainSignal",variable_names)
variable_names <- gsub("-X$", "InXAxis",variable_names)
variable_names <- gsub("-Y$", "InYAxis",variable_names)
variable_names <- gsub("-Z$", "InZAxis",variable_names)
variable_names <- gsub("Acc-|Acc", "Acceleration",variable_names)
variable_names <- gsub("Gyro-|Gyro", "Orientation",variable_names)
variable_names <- gsub("-mean()|mean()", "Mean",variable_names)
variable_names <- gsub("-std()|std()", "StandardDeviation",variable_names)
variable_names <- gsub("Mag", "Magnitude",variable_names)
variable_names <- gsub("BodyBody", "Body",variable_names)
variable_names <- gsub("[:():]", "",variable_names)
names(Z) <- variable_names
rm(V, variables, variable_names,index)
Z #Now the dataframe has descriptive variable names


#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for 
#each activity and each subject.
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subjects <- rbind(subject_train, subject_test)
Z <- cbind(subjects, Z)
names(Z) <- c("subjects", names(Z)[2:68])
tidy <- aggregate(Z[3:68], by = Z[c("activities", "subjects")], FUN = "mean")
tidy <- tidy[,c(2,1,3:68)]
write.table(tidy, file="tidy.txt", row.names=F)
rm(subject_train,subject_test,subjects,Z)


Note 1: The run_analysis.R script must be placed in the same folder of the data set (the folder *UCI HAR Dataset*), but **NOT** within it.
(In my case, I have a folder named "project" and I have the  "UCI HAR Dataset" AND the run_analysis.R script)

Note 2: Because this script might require a fair amount of RAM memory (about 500MB), the first function in it is *rm(list=ls())* which removes all objects in the Global Environment. I recommend to save any R object that is being used **before** running this script.

Note 3: For the reason explained in Note 2, at the end of each part of the script I use the rm() function to eliminate any R object that will not be used anymore as an attempt to keep the RAM memory consumption as low as possible.

**Part 1: Merges the training and the test sets to create one data set:**
- 1. Load the X_train.txt file from /UCI HAR Dataset/train/X_train.txt
- 2. Load X_test.txt file from /UCI HAR Dataset/test/X_test.txt
- 3. Append X_test to the end of X_train, using *the rbind()* function

**Part 2: Extracts only the measurements on the mean and standard deviation for each measurement:**
- 4. Make a list of the columns numbers the correspond to the mean and standard deviation measurements
- 5. Get a subset of the merged data frame obtained at the end of Part 1, using the list as column indexes

**Part 3: Uses descriptive activity names to name the activities in the data set:**
- 6. Load the activities corresponding to the Train dataset from /UCI HAR Dataset/train/y_train.txt	
- 7. Load the activities corresponding to the Test dataset from /UCI HAR Dataset/test/y_test.txt
- 8. Append both files using rbind(), and then append it to the dataset obtained at the end of Part 2
- 9. Change the activities names (numbers from 1 to 6) to descriptive names (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIR)

**Part 4: Appropriately labels the data set with descriptive variable names:**
- 10. Load the name of the variables from the file /UCI HAR Dataset/features.txt
- 11. Get a subset of the variables vector, using the same indexes of Step 5.
- 12. Append the "activities" variable name to the vector loaded in the previous step.
- 13. Change the variable names to descriptive ones. (Check Code Book for details)

**Part 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.**
- 14. Load the subjects corresponding to the Train dataset from /UCI HAR Dataset/train/subject_train.txt
- 15. Load the subjects corresponding to the Test dataset from /UCI HAR Dataset/test/subject_test.txt
- 16. Append both files using rbind(), and then append it to the dataset obtained at the end of Part 4
- 17. Append the "subjects" as the variable name of this new column.
- 18. Group the resulting data frame by *"activities"* and by *"subjects"*  and then apply the mean function to the columns corresponding to the measures (column 3 to 68), using the *aggregate()* function
- 19. Reorder the first and the second column to show "subjects" and then "activities"
- 20. Save the resulting data frame as a txt file using the *write.table()* function



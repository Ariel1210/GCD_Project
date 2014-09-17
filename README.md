
Note: The run_analysis.R script must be placed in the same folder of the data set (the folder *UCI HAR Dataset*), but **NOT** within it.
(In my case, I have a folder named "project" and I have the  "UCI HAR Dataset" AND the run_analysis.R script)

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

**Step 4: Appropriately labels the data set with descriptive variable names:**
-10. Load the name of the variables from the file /UCI HAR Dataset/features.txt
-11. Get a subset of the variables vector, using the same indexes of Step 5.
-12. Append the "activities" variable name to the vector loaded in the previous step.
-13. Change the variable names to descriptive ones. (Check Code Book for details)
 

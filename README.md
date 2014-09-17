
Note: The run_analysis.R script must be placed in the same folder of the data set (the folder *UCI HAR Dataset*), but **NOT** within it.
(In my case, I have a folder named "project" and I have the  "UCI HAR Dataset" AND the run_analysis.R script)

**Step 1: Merges the training and the test sets to create one data set:**
- 1. Load the X_train.txt file from /UCI HAR Dataset/train/X_train.txt
- 2. Load X_test.txt file from /UCI HAR Dataset/test/X_test.txt
- 3. Append X_test to the end of X_train, using *the rbind()* function

**Step 2: Extracts only the measurements on the mean and standard deviation for each measurement:**
- 4. Make a list of the columns numbers the correspond to the mean and standard deviation measurements
- 5. Get a subset of the merged data frame obtained in Step 1, using the list as column indexes

**Step 3: Uses descriptive activity names to name the activities in the data set:**
- 6. 	
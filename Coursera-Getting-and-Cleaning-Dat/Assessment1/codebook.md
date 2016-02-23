Getting and Cleaning Data CodeBook

  
The run_analysis.R script performs the following steps to clean the data:   
 
 1. Read X_train.txt, y_train.txt and subject_train.txt from the "./data/train" folder and store them in trainData, trainLabel and trainSubject variables respectively.       

 2. Read X_test.txt, y_test.txt and subject_test.txt from the "./data/test" folder and store them in testData, testLabel and testsubject variables respectively.  

 3. Concatenate testData to trainData to generate joinData, concatenate testLabel to trainLabel to generate joinLabel, concatenate testSubject to trainSubject to generate joinSubject.
  
 4. Read the features.txt file from the "/data" folder and store the data in a variable called features.We get a subset of joinData.  

 5. Clean the column names of the subset. We remove the "()" and "-" symbols in names and make the first letter of "mean" and "std" a capital letter "M" and "S" respectively.   

 6. Read the activity_labels.txt file from the "./data"" folder and store the data in a variable called activity.  

 7. Clean the activity names in the second column of activity.  

 8. Transform the values of joinLabel according to the activity data frame.  

 9. Combine the joinSubject, joinLabel and joinData by column to get cleanedData.Name the first two columns, "subject" and "activity".

 10. Write the cleanedData to "merged_data.txt" file in current working directory.  

 11. Finally, generate a second independent tidy data set.Write the result to "Tidydata.txt" file in current working directory. 
 

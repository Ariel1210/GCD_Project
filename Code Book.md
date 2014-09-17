##CODE BOOK
------------------------------------------------------------------------------------------------------
Note: This code book corresponds to the tidy dataset obtained after completing the step #5 

**Column #1: subjects**
- Numerical: 1-30
- Each number represents a subject (person) in the experiment

**Column #2: activities**
- Character: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIR
- These are the activities the subjects executed during the experiment
- Each subject did all these six activities, that's why there are six rows per each subject
- These activity names were obtained from the file /UCI HAR Dataset/activity_labels.txt

**Column #3 - 68: variables**
- The subsequent columns are the mean of the variables measured in the experiment, grouped by subject and by activity.
- Their values range from -1 to 1.
- These columns names are were modified from their original version as follows:
	-  "t" at the begining was changed to *"TimeDomainSignal"*
	-  "f" at the begining was changed to *"FrequencyDomainSignal"*
	-  "-X" at the end was changed to *"InXAxis"*
	-  "-Y" at the end was changed to *"InYAxis"*
	-  "-Z" at the end was changed to *"InZAxis"*
	-  "Acc-" and "Acc" were changed to "Acceleration" (that's what an accelerometer measures)
	-  "Gyro-" and "Gyro" were changed to "Orientation" (that's what an gyroscope measures)
	-  "mean-" and "mean()" were changed to "Mean" (Eliminating special characters and making them easier to read)
	-  "-std()" and "std()" were changed to "StandardDeviation"(Eliminating special characters and making them easier to read)
	-  "Mag" was changed to "Magnitude"
	-  "BodyBody" was changed to "Body"
	-  All other "()" were eliminated
- The resulting column names are:	
	-  "TimeDomainSignalBodyAccelerationMeanInXAxis"                        
	-  "TimeDomainSignalBodyAccelerationMeanInYAxis"                        
	-  "TimeDomainSignalBodyAccelerationMeanInZAxis"                        
	-  "TimeDomainSignalBodyAccelerationStandardDeviationInXAxis"           
	-  "TimeDomainSignalBodyAccelerationStandardDeviationInYAxis"           
	-  "TimeDomainSignalBodyAccelerationStandardDeviationInZAxis"           
	-  "TimeDomainSignalGravityAccelerationMeanInXAxis"                     
	-  "TimeDomainSignalGravityAccelerationMeanInYAxis"                     
	-  "TimeDomainSignalGravityAccelerationMeanInZAxis"                     
	-  "TimeDomainSignalGravityAccelerationStandardDeviationInXAxis"        
	-  "TimeDomainSignalGravityAccelerationStandardDeviationInYAxis"        
	-  "TimeDomainSignalGravityAccelerationStandardDeviationInZAxis"        
	-  "TimeDomainSignalBodyAccelerationJerkMeanInXAxis"                    
	-  "TimeDomainSignalBodyAccelerationJerkMeanInYAxis"                    
	-  "TimeDomainSignalBodyAccelerationJerkMeanInZAxis"                    
	-  "TimeDomainSignalBodyAccelerationJerkStandardDeviationInXAxis"       
	-  "TimeDomainSignalBodyAccelerationJerkStandardDeviationInYAxis"       
	-  "TimeDomainSignalBodyAccelerationJerkStandardDeviationInZAxis"       
	-  "TimeDomainSignalBodyOrientationMeanInXAxis"                         
	-  "TimeDomainSignalBodyOrientationMeanInYAxis"                         
	-  "TimeDomainSignalBodyOrientationMeanInZAxis"                         
	-  "TimeDomainSignalBodyOrientationStandardDeviationInXAxis"            
	-  "TimeDomainSignalBodyOrientationStandardDeviationInYAxis"            
	-  "TimeDomainSignalBodyOrientationStandardDeviationInZAxis"            
	-  "TimeDomainSignalBodyOrientationJerkMeanInXAxis"                     
	-  "TimeDomainSignalBodyOrientationJerkMeanInYAxis"                     
	-  "TimeDomainSignalBodyOrientationJerkMeanInZAxis"                     
	-  "TimeDomainSignalBodyOrientationJerkStandardDeviationInXAxis"        
	-  "TimeDomainSignalBodyOrientationJerkStandardDeviationInYAxis"        
	-  "TimeDomainSignalBodyOrientationJerkStandardDeviationInZAxis"        
	-  "TimeDomainSignalBodyAccelerationMagnitudeMean"                      
	-  "TimeDomainSignalBodyAccelerationMagnitudeStandardDeviation"         
	-  "TimeDomainSignalGravityAccelerationMagnitudeMean"                   
	-  "TimeDomainSignalGravityAccelerationMagnitudeStandardDeviation"      
	-  "TimeDomainSignalBodyAccelerationJerkMagnitudeMean"                  
	-  "TimeDomainSignalBodyAccelerationJerkMagnitudeStandardDeviation"     
	-  "TimeDomainSignalBodyOrientationMagnitudeMean"                       
	-  "TimeDomainSignalBodyOrientationMagnitudeStandardDeviation"          
	-  "TimeDomainSignalBodyOrientationJerkMagnitudeMean"                   
	-  "TimeDomainSignalBodyOrientationJerkMagnitudeStandardDeviation"      
	-  "FrequencyDomainSignalBodyAccelerationMeanInXAxis"                   
	-  "FrequencyDomainSignalBodyAccelerationMeanInYAxis"                   
	-  "FrequencyDomainSignalBodyAccelerationMeanInZAxis"                   
	-  "FrequencyDomainSignalBodyAccelerationStandardDeviationInXAxis"      
	-  "FrequencyDomainSignalBodyAccelerationStandardDeviationInYAxis"      
	-  "FrequencyDomainSignalBodyAccelerationStandardDeviationInZAxis"      
	-  "FrequencyDomainSignalBodyAccelerationJerkMeanInXAxis"               
	-  "FrequencyDomainSignalBodyAccelerationJerkMeanInYAxis"               
	-  "FrequencyDomainSignalBodyAccelerationJerkMeanInZAxis"               
	-  "FrequencyDomainSignalBodyAccelerationJerkStandardDeviationInXAxis"  
	-  "FrequencyDomainSignalBodyAccelerationJerkStandardDeviationInYAxis"  
	-  "FrequencyDomainSignalBodyAccelerationJerkStandardDeviationInZAxis"  
	-  "FrequencyDomainSignalBodyOrientationMeanInXAxis"                    
	-  "FrequencyDomainSignalBodyOrientationMeanInYAxis"                    
	-  "FrequencyDomainSignalBodyOrientationMeanInZAxis"                    
	-  "FrequencyDomainSignalBodyOrientationStandardDeviationInXAxis"       
	-  "FrequencyDomainSignalBodyOrientationStandardDeviationInYAxis"       
	-  "FrequencyDomainSignalBodyOrientationStandardDeviationInZAxis"       
	-  "FrequencyDomainSignalBodyAccelerationMagnitudeMean"                 
	-  "FrequencyDomainSignalBodyAccelerationMagnitudeStandardDeviation"    
	-  "FrequencyDomainSignalBodyAccelerationJerkMagnitudeMean"             
	-  "FrequencyDomainSignalBodyAccelerationJerkMagnitudeStandardDeviation"
	-  "FrequencyDomainSignalBodyOrientationMagnitudeMean"                  
	-  "FrequencyDomainSignalBodyOrientationMagnitudeStandardDeviation"     
	-  "FrequencyDomainSignalBodyOrientationJerkMagnitudeMean"              
	-  "FrequencyDomainSignalBodyOrientationJerkMagnitudeStandardDeviation" 



 


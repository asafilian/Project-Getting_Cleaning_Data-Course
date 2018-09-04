# Codebook
---
title: "Codebook: Getting and Cleaning Data Course Project", 
author: "Aliakbar Safilian", 
date: "Sep 3, 2018"
---

## Project Description
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis. 
  

## Study design and data processing

### Collection of the raw data
The raw data set represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Here is the raw data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


## Creating the tidy data file

### Guide to create the tidy data file
1. Download the zip file (see the above link) and extract it. Unzip it and make your working directory to the corresponding directory. 
   The folder would include the following data sets:
   * "features.txt", which represents the list of all features.
   * "activity_labels.txt", which links the class labels with their activity name.
   * "train/X_train.txt", which is the training set. 
   * "train/subject_train" each of whose rows identifies the subject who performed the activity for each training sample. Its range is from 1 to 30.
   * "train/y_train", which represents the training labels. 
   * "test/X_test" to an object, which represents the test set. 
   * "test/subject_test" each of whose rows identifies the subject who performed the activity for each test sample. Its range is from 1 to 30.
   * "test/y_test", which represents the test labels. 
2. Load 'run_analysis.R' to get a desired tidy data.		 

### Cleaning of the data
The "run_analysis.R" does the following tasks on the raw data:
1. Merges the training and test data set:
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of

It will also write a desired tidy data set into a file called "ds_tidy.txt".
See README.md for a detailed information. 	

## Description of the variables in the 'ds_tidy.txt' file
General description of the file including:
 - Dimensions of ds_tidy is 180 x 68
 - There are 68 variables as follows:
 
	[1] "activity"                                         
	[2] "subject"                                          
	[3] "time-body-accelerometer-mean()-x"                 
	[4] "time-body-accelerometer-mean()-y"                 
	[5] "time-body-accelerometer-mean()-z"                 
	[6] "time-body-accelerometer-std()-x"                  
	[7] "time-body-accelerometer-std()-y"                  
	[8] "time-body-accelerometer-std()-z"                  
	[9] "time-gravity-accelerometer-mean()-x"              
	[10] "time-gravity-accelerometer-mean()-y"              
	[11] "time-gravity-accelerometer-mean()-z"              
	[12] "time-gravity-accelerometer-std()-x"               
	[13] "time-gravity-accelerometer-std()-y"               
	[14] "time-gravity-accelerometer-std()-z"               
	[15] "time-body-accelerometer-jerk-mean()-x"            
	[16] "time-body-accelerometer-jerk-mean()-y"            
	[17] "time-body-accelerometer-jerk-mean()-z"            
	[18] "time-body-accelerometer-jerk-std()-x"             
	[19] "time-body-accelerometer-jerk-std()-y"             
	[20] "time-body-accelerometer-jerk-std()-z"             
	[21] "time-body-gyroscope-mean()-x"                     
	[22] "time-body-gyroscope-mean()-y"                     
	[23] "time-body-gyroscope-mean()-z"                     
	[24] "time-body-gyroscope-std()-x"                      
	[25] "time-body-gyroscope-std()-y"                      
	[26] "time-body-gyroscope-std()-z"                      
	[27] "time-body-gyroscope-jerk-mean()-x"                
	[28] "time-body-gyroscope-jerk-mean()-y"                
	[29] "time-body-gyroscope-jerk-mean()-z"                
	[30] "time-body-gyroscope-jerk-std()-x"                 
	[31] "time-body-gyroscope-jerk-std()-y"                 
	[32] "time-body-gyroscope-jerk-std()-z"                 
	[33] "time-body-accelerometer-magnitude-mean()"         
	[34] "time-body-accelerometer-magnitude-std()"          
	[35] "time-gravity-accelerometer-magnitude-mean()"      
	[36] "time-gravity-accelerometer-magnitude-std()"       
	[37] "time-body-accelerometer-jerk-magnitude-mean()"    
	[38] "time-body-accelerometer-jerk-magnitude-std()"     
	[39] "time-body-gyroscope-magnitude-mean()"             
	[40] "time-body-gyroscope-magnitude-std()"              
	[41] "time-body-gyroscope-jerk-magnitude-mean()"        
	[42] "time-body-gyroscope-jerk-magnitude-std()"         
	[43] "fft-body-accelerometer-mean()-x"                  
	[44] "fft-body-accelerometer-mean()-y"                  
	[45] "fft-body-accelerometer-mean()-z"                  
	[46] "fft-body-accelerometer-std()-x"                   
	[47] "fft-body-accelerometer-std()-y"                   
	[48] "fft-body-accelerometer-std()-z"                   
	[49] "fft-body-accelerometer-jerk-mean()-x"             
	[50] "fft-body-accelerometer-jerk-mean()-y"             
	[51] "fft-body-accelerometer-jerk-mean()-z"             
	[52] "fft-body-accelerometer-jerk-std()-x"              
	[53] "fft-body-accelerometer-jerk-std()-y"              
	[54] "fft-body-accelerometer-jerk-std()-z"              
	[55] "fft-body-gyroscope-mean()-x"                      
	[56] "fft-body-gyroscope-mean()-y"                      
	[57] "fft-body-gyroscope-mean()-z"                      
	[58] "fft-body-gyroscope-std()-x"                       
	[59] "fft-body-gyroscope-std()-y"                       
	[60] "fft-body-gyroscope-std()-z"                       
	[61] "fft-body-accelerometer-magnitude-mean()"          
	[62] "fft-body-accelerometer-magnitude-std()"           
	[63] "fft-body-body-accelerometer-jerk-magnitude-mean()"
	[64] "fft-body-body-accelerometer-jerk-magnitude-std()" 
	[65] "fft-body-body-gyroscope-magnitude-mean()"         
	[66] "fft-body-body-gyroscope-magnitude-std()"          
	[67] "fft-body-body-gyroscope-jerk-magnitude-mean()"    
	[68] "fft-body-body-gyroscope-jerk-magnitude-std()"
- Summary of the data: 

	 activity            subject     time-body-accelerometer-mean()-x
	 Length:180         Min.   : 1.0   Min.   :0.2216                  
	 Class :character   1st Qu.: 8.0   1st Qu.:0.2712                  
	 Mode  :character   Median :15.5   Median :0.2770                  
						Mean   :15.5   Mean   :0.2743                  
						3rd Qu.:23.0   3rd Qu.:0.2800                  
						Max.   :30.0   Max.   :0.3015                  
	 time-body-accelerometer-mean()-y time-body-accelerometer-mean()-z
	 Min.   :-0.040514                Min.   :-0.15251                
	 1st Qu.:-0.020022                1st Qu.:-0.11207                
	 Median :-0.017262                Median :-0.10819                
	 Mean   :-0.017876                Mean   :-0.10916                
	 3rd Qu.:-0.014936                3rd Qu.:-0.10443                
	 Max.   :-0.001308                Max.   :-0.07538                
	 time-body-accelerometer-std()-x time-body-accelerometer-std()-y
	 Min.   :-0.9961                 Min.   :-0.99024               
	 1st Qu.:-0.9799                 1st Qu.:-0.94205               
	 Median :-0.7526                 Median :-0.50897               
	 Mean   :-0.5577                 Mean   :-0.46046               
	 3rd Qu.:-0.1984                 3rd Qu.:-0.03077               
	 Max.   : 0.6269                 Max.   : 0.61694               
	 time-body-accelerometer-std()-z time-gravity-accelerometer-mean()-x
	 Min.   :-0.9877                 Min.   :-0.6800                    
	 1st Qu.:-0.9498                 1st Qu.: 0.8376                    
	 Median :-0.6518                 Median : 0.9208                    
	 Mean   :-0.5756                 Mean   : 0.6975                    
	 3rd Qu.:-0.2306                 3rd Qu.: 0.9425                    
	 Max.   : 0.6090                 Max.   : 0.9745                    
	 time-gravity-accelerometer-mean()-y time-gravity-accelerometer-mean()-z
	 Min.   :-0.47989                    Min.   :-0.49509                   
	 1st Qu.:-0.23319                    1st Qu.:-0.11726                   
	 Median :-0.12782                    Median : 0.02384                   
	 Mean   :-0.01621                    Mean   : 0.07413                   
	 3rd Qu.: 0.08773                    3rd Qu.: 0.14946                   
	 Max.   : 0.95659                    Max.   : 0.95787                   
	 time-gravity-accelerometer-std()-x time-gravity-accelerometer-std()-y
	 Min.   :-0.9968                    Min.   :-0.9942                   
	 1st Qu.:-0.9825                    1st Qu.:-0.9711                   
	 Median :-0.9695                    Median :-0.9590                   
	 Mean   :-0.9638                    Mean   :-0.9524                   
	 3rd Qu.:-0.9509                    3rd Qu.:-0.9370                   
	 Max.   :-0.8296                    Max.   :-0.6436                   
	 time-gravity-accelerometer-std()-z time-body-accelerometer-jerk-mean()-x
	 Min.   :-0.9910                    Min.   :0.04269                      
	 1st Qu.:-0.9605                    1st Qu.:0.07396                      
	 Median :-0.9450                    Median :0.07640                      
	 Mean   :-0.9364                    Mean   :0.07947                      
	 3rd Qu.:-0.9180                    3rd Qu.:0.08330                      
	 Max.   :-0.6102                    Max.   :0.13019                      
	 time-body-accelerometer-jerk-mean()-y time-body-accelerometer-jerk-mean()-z
	 Min.   :-0.0386872                    Min.   :-0.067458                    
	 1st Qu.: 0.0004664                    1st Qu.:-0.010601                    
	 Median : 0.0094698                    Median :-0.003861                    
	 Mean   : 0.0075652                    Mean   :-0.004953                    
	 3rd Qu.: 0.0134008                    3rd Qu.: 0.001958                    
	 Max.   : 0.0568186                    Max.   : 0.038053                    
	 time-body-accelerometer-jerk-std()-x time-body-accelerometer-jerk-std()-y
	 Min.   :-0.9946                      Min.   :-0.9895                     
	 1st Qu.:-0.9832                      1st Qu.:-0.9724                     
	 Median :-0.8104                      Median :-0.7756                     
	 Mean   :-0.5949                      Mean   :-0.5654                     
	 3rd Qu.:-0.2233                      3rd Qu.:-0.1483                     
	 Max.   : 0.5443                      Max.   : 0.3553                     
	 time-body-accelerometer-jerk-std()-z time-body-gyroscope-mean()-x
	 Min.   :-0.99329                     Min.   :-0.20578            
	 1st Qu.:-0.98266                     1st Qu.:-0.04712            
	 Median :-0.88366                     Median :-0.02871            
	 Mean   :-0.73596                     Mean   :-0.03244            
	 3rd Qu.:-0.51212                     3rd Qu.:-0.01676            
	 Max.   : 0.03102                     Max.   : 0.19270            
	 time-body-gyroscope-mean()-y time-body-gyroscope-mean()-z
	 Min.   :-0.20421             Min.   :-0.07245            
	 1st Qu.:-0.08955             1st Qu.: 0.07475            
	 Median :-0.07318             Median : 0.08512            
	 Mean   :-0.07426             Mean   : 0.08744            
	 3rd Qu.:-0.06113             3rd Qu.: 0.10177            
	 Max.   : 0.02747             Max.   : 0.17910            
	 time-body-gyroscope-std()-x time-body-gyroscope-std()-y
	 Min.   :-0.9943             Min.   :-0.9942            
	 1st Qu.:-0.9735             1st Qu.:-0.9629            
	 Median :-0.7890             Median :-0.8017            
	 Mean   :-0.6916             Mean   :-0.6533            
	 3rd Qu.:-0.4414             3rd Qu.:-0.4196            
	 Max.   : 0.2677             Max.   : 0.4765            
	 time-body-gyroscope-std()-z time-body-gyroscope-jerk-mean()-x
	 Min.   :-0.9855             Min.   :-0.15721                 
	 1st Qu.:-0.9609             1st Qu.:-0.10322                 
	 Median :-0.8010             Median :-0.09868                 
	 Mean   :-0.6164             Mean   :-0.09606                 
	 3rd Qu.:-0.3106             3rd Qu.:-0.09110                 
	 Max.   : 0.5649             Max.   :-0.02209                 
	 time-body-gyroscope-jerk-mean()-y time-body-gyroscope-jerk-mean()-z
	 Min.   :-0.07681                  Min.   :-0.092500                
	 1st Qu.:-0.04552                  1st Qu.:-0.061725                
	 Median :-0.04112                  Median :-0.053430                
	 Mean   :-0.04269                  Mean   :-0.054802                
	 3rd Qu.:-0.03842                  3rd Qu.:-0.048985                
	 Max.   :-0.01320                  Max.   :-0.006941                
	 time-body-gyroscope-jerk-std()-x time-body-gyroscope-jerk-std()-y
	 Min.   :-0.9965                  Min.   :-0.9971                 
	 1st Qu.:-0.9800                  1st Qu.:-0.9832                 
	 Median :-0.8396                  Median :-0.8942                 
	 Mean   :-0.7036                  Mean   :-0.7636                 
	 3rd Qu.:-0.4629                  3rd Qu.:-0.5861                 
	 Max.   : 0.1791                  Max.   : 0.2959                 
	 time-body-gyroscope-jerk-std()-z time-body-accelerometer-magnitude-mean()
	 Min.   :-0.9954                  Min.   :-0.9865                         
	 1st Qu.:-0.9848                  1st Qu.:-0.9573                         
	 Median :-0.8610                  Median :-0.4829                         
	 Mean   :-0.7096                  Mean   :-0.4973                         
	 3rd Qu.:-0.4741                  3rd Qu.:-0.0919                         
	 Max.   : 0.1932                  Max.   : 0.6446                         
	 time-body-accelerometer-magnitude-std()
	 Min.   :-0.9865                        
	 1st Qu.:-0.9430                        
	 Median :-0.6074                        
	 Mean   :-0.5439                        
	 3rd Qu.:-0.2090                        
	 Max.   : 0.4284                        
	 time-gravity-accelerometer-magnitude-mean()
	 Min.   :-0.9865                            
	 1st Qu.:-0.9573                            
	 Median :-0.4829                            
	 Mean   :-0.4973                            
	 3rd Qu.:-0.0919                            
	 Max.   : 0.6446                            
	 time-gravity-accelerometer-magnitude-std()
	 Min.   :-0.9865                           
	 1st Qu.:-0.9430                           
	 Median :-0.6074                           
	 Mean   :-0.5439                           
	 3rd Qu.:-0.2090                           
	 Max.   : 0.4284                           
	 time-body-accelerometer-jerk-magnitude-mean()
	 Min.   :-0.9928                              
	 1st Qu.:-0.9807                              
	 Median :-0.8168                              
	 Mean   :-0.6079                              
	 3rd Qu.:-0.2456                              
	 Max.   : 0.4345                              
	 time-body-accelerometer-jerk-magnitude-std()
	 Min.   :-0.9946                             
	 1st Qu.:-0.9765                             
	 Median :-0.8014                             
	 Mean   :-0.5842                             
	 3rd Qu.:-0.2173                             
	 Max.   : 0.4506                             
	 time-body-gyroscope-magnitude-mean() time-body-gyroscope-magnitude-std()
	 Min.   :-0.9807                      Min.   :-0.9814                    
	 1st Qu.:-0.9461                      1st Qu.:-0.9476                    
	 Median :-0.6551                      Median :-0.7420                    
	 Mean   :-0.5652                      Mean   :-0.6304                    
	 3rd Qu.:-0.2159                      3rd Qu.:-0.3602                    
	 Max.   : 0.4180                      Max.   : 0.3000                    
	 time-body-gyroscope-jerk-magnitude-mean()
	 Min.   :-0.99732                         
	 1st Qu.:-0.98515                         
	 Median :-0.86479                         
	 Mean   :-0.73637                         
	 3rd Qu.:-0.51186                         
	 Max.   : 0.08758                         
	 time-body-gyroscope-jerk-magnitude-std() fft-body-accelerometer-mean()-x
	 Min.   :-0.9977                          Min.   :-0.9952                
	 1st Qu.:-0.9805                          1st Qu.:-0.9787                
	 Median :-0.8809                          Median :-0.7691                
	 Mean   :-0.7550                          Mean   :-0.5758                
	 3rd Qu.:-0.5767                          3rd Qu.:-0.2174                
	 Max.   : 0.2502                          Max.   : 0.5370                
	 fft-body-accelerometer-mean()-y fft-body-accelerometer-mean()-z
	 Min.   :-0.98903                Min.   :-0.9895                
	 1st Qu.:-0.95361                1st Qu.:-0.9619                
	 Median :-0.59498                Median :-0.7236                
	 Mean   :-0.48873                Mean   :-0.6297                
	 3rd Qu.:-0.06341                3rd Qu.:-0.3183                
	 Max.   : 0.52419                Max.   : 0.2807                
	 fft-body-accelerometer-std()-x fft-body-accelerometer-std()-y
	 Min.   :-0.9966                Min.   :-0.99068              
	 1st Qu.:-0.9820                1st Qu.:-0.94042              
	 Median :-0.7470                Median :-0.51338              
	 Mean   :-0.5522                Mean   :-0.48148              
	 3rd Qu.:-0.1966                3rd Qu.:-0.07913              
	 Max.   : 0.6585                Max.   : 0.56019              
	 fft-body-accelerometer-std()-z fft-body-accelerometer-jerk-mean()-x
	 Min.   :-0.9872                Min.   :-0.9946                     
	 1st Qu.:-0.9459                1st Qu.:-0.9828                     
	 Median :-0.6441                Median :-0.8126                     
	 Mean   :-0.5824                Mean   :-0.6139                     
	 3rd Qu.:-0.2655                3rd Qu.:-0.2820                     
	 Max.   : 0.6871                Max.   : 0.4743                     
	 fft-body-accelerometer-jerk-mean()-y fft-body-accelerometer-jerk-mean()-z
	 Min.   :-0.9894                      Min.   :-0.9920                     
	 1st Qu.:-0.9725                      1st Qu.:-0.9796                     
	 Median :-0.7817                      Median :-0.8707                     
	 Mean   :-0.5882                      Mean   :-0.7144                     
	 3rd Qu.:-0.1963                      3rd Qu.:-0.4697                     
	 Max.   : 0.2767                      Max.   : 0.1578                     
	 fft-body-accelerometer-jerk-std()-x fft-body-accelerometer-jerk-std()-y
	 Min.   :-0.9951                     Min.   :-0.9905                    
	 1st Qu.:-0.9847                     1st Qu.:-0.9737                    
	 Median :-0.8254                     Median :-0.7852                    
	 Mean   :-0.6121                     Mean   :-0.5707                    
	 3rd Qu.:-0.2475                     3rd Qu.:-0.1685                    
	 Max.   : 0.4768                     Max.   : 0.3498                    
	 fft-body-accelerometer-jerk-std()-z fft-body-gyroscope-mean()-x
	 Min.   :-0.993108                   Min.   :-0.9931            
	 1st Qu.:-0.983747                   1st Qu.:-0.9697            
	 Median :-0.895121                   Median :-0.7300            
	 Mean   :-0.756489                   Mean   :-0.6367            
	 3rd Qu.:-0.543787                   3rd Qu.:-0.3387            
	 Max.   :-0.006236                   Max.   : 0.4750            
	 fft-body-gyroscope-mean()-y fft-body-gyroscope-mean()-z
	 Min.   :-0.9940             Min.   :-0.9860            
	 1st Qu.:-0.9700             1st Qu.:-0.9624            
	 Median :-0.8141             Median :-0.7909            
	 Mean   :-0.6767             Mean   :-0.6044            
	 3rd Qu.:-0.4458             3rd Qu.:-0.2635            
	 Max.   : 0.3288             Max.   : 0.4924            
	 fft-body-gyroscope-std()-x fft-body-gyroscope-std()-y
	 Min.   :-0.9947            Min.   :-0.9944           
	 1st Qu.:-0.9750            1st Qu.:-0.9602           
	 Median :-0.8086            Median :-0.7964           
	 Mean   :-0.7110            Mean   :-0.6454           
	 3rd Qu.:-0.4813            3rd Qu.:-0.4154           
	 Max.   : 0.1966            Max.   : 0.6462           
	 fft-body-gyroscope-std()-z fft-body-accelerometer-magnitude-mean()
	 Min.   :-0.9867            Min.   :-0.9868                        
	 1st Qu.:-0.9643            1st Qu.:-0.9560                        
	 Median :-0.8224            Median :-0.6703                        
	 Mean   :-0.6577            Mean   :-0.5365                        
	 3rd Qu.:-0.3916            3rd Qu.:-0.1622                        
	 Max.   : 0.5225            Max.   : 0.5866                        
	 fft-body-accelerometer-magnitude-std()
	 Min.   :-0.9876                       
	 1st Qu.:-0.9452                       
	 Median :-0.6513                       
	 Mean   :-0.6210                       
	 3rd Qu.:-0.3654                       
	 Max.   : 0.1787                       
	 fft-body-body-accelerometer-jerk-magnitude-mean()
	 Min.   :-0.9940                                  
	 1st Qu.:-0.9770                                  
	 Median :-0.7940                                  
	 Mean   :-0.5756                                  
	 3rd Qu.:-0.1872                                  
	 Max.   : 0.5384                                  
	 fft-body-body-accelerometer-jerk-magnitude-std()
	 Min.   :-0.9944                                 
	 1st Qu.:-0.9752                                 
	 Median :-0.8126                                 
	 Mean   :-0.5992                                 
	 3rd Qu.:-0.2668                                 
	 Max.   : 0.3163                                 
	 fft-body-body-gyroscope-magnitude-mean()
	 Min.   :-0.9865                         
	 1st Qu.:-0.9616                         
	 Median :-0.7657                         
	 Mean   :-0.6671                         
	 3rd Qu.:-0.4087                         
	 Max.   : 0.2040                         
	 fft-body-body-gyroscope-magnitude-std()
	 Min.   :-0.9815                        
	 1st Qu.:-0.9488                        
	 Median :-0.7727                        
	 Mean   :-0.6723                        
	 3rd Qu.:-0.4277                        
	 Max.   : 0.2367                        
	 fft-body-body-gyroscope-jerk-magnitude-mean()
	 Min.   :-0.9976                              
	 1st Qu.:-0.9813                              
	 Median :-0.8779                              
	 Mean   :-0.7564                              
	 3rd Qu.:-0.5831                              
	 Max.   : 0.1466                              
	 fft-body-body-gyroscope-jerk-magnitude-std()
	 Min.   :-0.9976                             
	 1st Qu.:-0.9802                             
	 Median :-0.8941                             
	 Mean   :-0.7715                             
	 3rd Qu.:-0.6081                             
	 Max.   : 0.2878
 
 - See the detailed description of variables below:

### "activity":
Represents the activity label for observations. 
 - Class: 'character'
 - Unique values: "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"  
 - Unit of measurement: no unit of measurement

### "subject"
Represents who performed the activity for observations. 
 - Class: 'integer'
 - Unique values: 1:30  
 - Unit of measurement: no unit of measurement

### "time-body-accelerometer-mean()-x" 
This variable represents the average value of the corresponding variable for each subject and activity 
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of 'accelerometer' of the 'x' axle from 3-axial raw signals captured at a constant rate of 50 Hz. 
 

### "time-body-accelerometer-mean()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of 'accelerometer' of the 'y' axle from 3-axial raw signals.  

### "time-body-accelerometer-mean()-z" 
This variable represents the average value of the corresponding variable for each subject and activity 
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of 'accelerometer' of the 'z' axle from 3-axial raw signals.  

### "time-body-accelerometer-std()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of 'accelerometer' of the 'x' axle from 3-axial raw signals.  
 	
### "time-body-accelerometer-std()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of 'accelerometer' of the 'y' axle from 3-axial raw signals.  

### "time-body-accelerometer-std()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of 'accelerometer' of the 'z' axle from 3-axial raw signals.  
 
### "time-gravity-accelerometer-mean()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of 'gravity accelerometer' of the 'x' axle from 3-axial raw signals.  

### "time-gravity-accelerometer-mean()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of 'gravity accelerometer' of the 'y' axle from 3-axial raw signals.  

### "time-gravity-accelerometer-mean()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of 'gravity accelerometer' of the 'z' axle from 3-axial raw signals.  

### "time-gravity-accelerometer-std()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of 'gravity accelerometer' of the 'x' axle from 3-axial raw signals.  

### "time-gravity-accelerometer-std()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of 'gravity accelerometer' of the 'y' axle from 3-axial raw signals.  
   	
### "time-gravity-accelerometer-std()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of 'gravity accelerometer' of the 'z' axle from 3-axial raw signals.  
  
### "time-body-accelerometer-jerk-mean()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of the 'jerk' signal of 'accelerometer' of the 'x' axle from 3-axial raw signals.  
  
### "time-body-accelerometer-jerk-mean()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of the 'jerk' signal of 'accelerometer' of the 'y' axle from 3-axial raw signals.  

### "time-body-accelerometer-jerk-mean()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of the 'jerk' signal of 'accelerometer' of the 'z' axle from 3-axial raw signals.  

### "time-body-accelerometer-jerk-std()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of the 'jerk' signal of 'accelerometer' of the 'x' axle from 3-axial raw signals.  

### "time-body-accelerometer-jerk-std()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of the 'jerk' signal of 'accelerometer' of the 'y' axle from 3-axial raw signals.  

### "time-body-accelerometer-jerk-std()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of the 'jerk' signal of 'accelerometer' of the 'z' axle from 3-axial raw signals.  

### "time-body-gyroscope-mean()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of 'gyroscope' of the 'x' axle from 3-axial raw signals.  

### "time-body-gyroscope-mean()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of 'gyroscope' of the 'y' axle from 3-axial raw signals.  

### "time-body-gyroscope-mean()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of 'gyroscope' of the 'z' axle from 3-axial raw signals.  

### "time-body-gyroscope-std()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of 'gyroscope' of the 'x' axle from 3-axial raw signals.  

### "time-body-gyroscope-std()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of 'gyroscope' of the 'y' axle from 3-axial raw signals.  
	
### "time-body-gyroscope-std()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of 'gyroscope' of the 'z' axle from 3-axial raw signals.  
	
### "time-body-gyroscope-jerk-mean()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of the 'jerk' signal of 'gyroscope' of the 'x' axle from 3-axial raw signals.  
	

### "time-body-gyroscope-jerk-mean()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of the 'jerk' signal of 'gyroscope' of the 'y' axle from 3-axial raw signals.  
	
### "time-body-gyroscope-jerk-mean()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'mean' value of the 'body' part of the 'jerk' signal of 'gyroscope' of the 'z' axle from 3-axial raw signals.  
		
### "time-body-gyroscope-jerk-std()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of the 'jerk' signal of 'gyroscope' of the 'x' axle from 3-axial raw signals.  
		
### "time-body-gyroscope-jerk-std()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of the 'jerk' signal of 'gyroscope' of the 'y' axle from 3-axial raw signals.  
		
### "time-body-gyroscope-jerk-std()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'body' part of the 'jerk' signal of 'gyroscope' of the 'z' axle from 3-axial raw signals.  
		
### "time-body-accelerometer-magnitude-mean()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'mean' value of the 'magnitude' of the 'body' part of 'accelerometer'.  
	
### "time-body-accelerometer-magnitude-std()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'magnitude' of the 'body' part of 'accelerometer'.  
	
### "time-gravity-accelerometer-magnitude-mean()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'mean' value of the 'magnitude' of 'garavity accelerometer'.  
	
### "time-gravity-accelerometer-magnitude-std()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'magnitude' of 'garavity accelerometer'.  
	
### "time-body-accelerometer-jerk-magnitude-mean()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'mean' value of the 'magnitude' of the 'body' part of the 'jerk' signal of 'accelerometer'.  
	
### "time-body-accelerometer-jerk-magnitude-std()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'magnitude' of the 'body' part of the 'jerk' signal of 'accelerometer'.  
				
### "time-body-gyroscope-magnitude-mean()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'mean' value of the 'magnitude' of the 'body' part of the 'gyroscope'.  
	
### "time-body-gyroscope-magnitude-std()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'magnitude' of the 'body' part of the 'gyroscope'.  
	
### "time-body-gyroscope-jerk-magnitude-mean()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'mean' value of the 'magnitude' of the 'body' part of the 'jerk' signal of 'gyroscope'.  
	
### "time-body-gyroscope-jerk-magnitude-std()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	The 'standard deviation' value of the 'magnitude' of the 'body' part of the 'jerk' signal of 'gyroscope'.  
	
### "fft-body-accelerometer-mean()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units of 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'body' part of 'accelerometer' of the 'x' axle.  
	
### "fft-body-accelerometer-mean()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units of 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'body' part of 'accelerometer' of the 'y' axle.  
	
### "fft-body-accelerometer-mean()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units of 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'body' part of 'accelerometer' of the 'z' axle.  
	
### "fft-body-accelerometer-std()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units of 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'body' part of 'accelerometer' of the 'x' axle.  

### "fft-body-accelerometer-std()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units of 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'body' part of 'accelerometer' of the 'y' axle.  

### "fft-body-accelerometer-std()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units of 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'body' part of 'accelerometer' of the 'z' axle.  

### "fft-body-accelerometer-jerk-mean()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units of 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'body' part of the 'jerk' signal of 'accelerometer' of the 'x' axle.  

### "fft-body-accelerometer-jerk-mean()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units of 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'body' part of the 'jerk' signal of 'accelerometer' of the 'y' axle.  

### "fft-body-accelerometer-jerk-mean()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units of 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'body' part of the 'jerk' signal of 'accelerometer' of the 'z' axle.  

### "fft-body-accelerometer-jerk-std()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units of 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'body' part of the 'jerk' signal of 'accelerometer' of the 'x' axle.  

### "fft-body-accelerometer-jerk-std()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units of 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'body' part of the 'jerk' signal of 'accelerometer' of the 'y' axle.  

### "fft-body-accelerometer-jerk-std()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units of 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'body' part of the 'jerk' signal of 'accelerometer' of the 'z' axle.  

### "fft-body-gyroscope-mean()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'body' part of 'gyroscope' of the 'x' axle.  

### "fft-body-gyroscope-mean()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'body' part of 'gyroscope' of the 'y' axle.  

### "fft-body-gyroscope-mean()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'body' part of 'gyroscope' of the 'z' axle.  

### "fft-body-gyroscope-std()-x"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'body' part of 'gyroscope' of the 'x' axle.  

### "fft-body-gyroscope-std()-y"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'body' part of 'gyroscope' of the 'y' axle.  

### "fft-body-gyroscope-std()-z"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'body' part of 'gyroscope' of the 'z' axle.  

### "fft-body-accelerometer-magnitude-mean()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'magnitude' of the 'body' part of 'accelerometer'.  

### "fft-body-accelerometer-magnitude-std()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'magnitude' of the 'body' part of 'accelerometer'.  

### "fft-body-body-accelerometer-jerk-magnitude-mean()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'magnitude' of the 'body' part of the 'jerk' signal of 'accelerometer'.  

### "fft-body-body-accelerometer-jerk-magnitude-std()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: standard gravity units 'g'
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'magnitude' of the 'body' part of the 'jerk' signal of 'accelerometer'.  

### "fft-body-body-gyroscope-magnitude-mean()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'magnitude' of the 'body' part of 'gyroscope'.  

### "fft-body-body-gyroscope-magnitude-std()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'magnitude' of the 'body' part of 'gyroscope'.  

### "fft-body-body-gyroscope-jerk-magnitude-mean()"
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'mean' value of the 'magnitude' of the 'body' part of the 'jerk' signal of 'gyroscope'.  

### "fft-body-body-gyroscope-jerk-magnitude-std()" (68)
This variable represents the average value of the corresponding variable for each subject and activity  
 - Class: 'numeric'
 - Unit of measurement: radians/second
 - Description of how entries were constructed: 
	'Fast Fourier Transform' (FFT) applied on the 'standard deviation' value of the 'magnitude' of the 'body' part of the 'jerk' signal of 'gyroscope'.  


## Sources
raw data:

[1] http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

[2] https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

I have used a template to prepare this Codebook (but have lost the link).
 
I have also taken advantage of some threads on the course discussion forum. 


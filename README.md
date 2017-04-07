# Insight_project

## Trust Your Gut: A Tool to Predict Patients’ Risk of Colorectal Cancer Based on Gut Microbe Sequencing
  *Zhongyun (Julie) did this Insight Project when she was a Insight Health Data Science fellow at Boston in the spring of 2017. 
  
  *TrusYourGut allows users to upload gut microbiome sequence data from uBiome service, and then assess the risk of colorectal cancer. 
  [Webapp for this project](http://havesomeguts.faith/ "Trust Your Gut")

## Motivation
  The motivation of this project is to use patient's gut microbiome sequence data to predict one's risk of having colorectal cancer. 
  The current most widely used screening test for gut microbiome is Fecal Occult Blood Test (FOBT). Unfortunately, the FOBT test has a very high false negative rate. 
  All raw data is obtained from a publication reporting a French study on colorectal cancer. Please look at the Pop_F_paper folder to find the original publication and related supplementary data

## Data source and feature engineering
  The original data source has the relative aundancy of 1754 gut bacteria species, for 53 colorectal caner patients and 88 control cases. 
  I borrowed biological knowlege to do feature selection, by including the 17 most abundant species on average, and 10 species reported to be colorectal cancer associated by pulications(see train_valid.csv). 
  
## Classification
  This cancer risk prediction problem is treated as a classification. To find the best machine learning method to classify patients into "healthy" or "cancer, I actually tried the following classifiers: logistics regression, SVM, K-nearest neighbors and random forest. Random forest is eventually optimized in terms of hyperparameters and used to build the model since this is a great classifier to handle non-linearity in biology dataset. 
 
## Validation
  Nested cross validation with 5-folds is performed on the dataset, and the method reached 80% accuracy with colorectal cancer prediction, with high sensitivity. 
  Finally random forest model was pickled to make a webapp with flask hosted on AWS. 

## ROC and sensitivity of the test
  For a cancer screening test, my aim is to minimize false negative rate. However, at the same time, the false positive rate cannot be too high, as it will lead to high medical costs afterwards, and also lead to unnecessary patient anxiety. 
  *The ROC curve shows a great overall prediction of my model.
  *The confusion matrix shows high sensitivity, high accuracy and acceptable precision 
![alt text](https://github.com/Zhongyun-Huang/Insight_project/blob/master/confusion_matrix_ROC.png)
## Visualize the top 5 colorectal cancer related microbe species
  To give users a better sense of their gut microbiome status, I used violen plot to visualize the abundancies of the top 5 colorectal cancer species for all healthy samples in the training database. The blue dots highlighted on the plot show species abundancy of the particular user who updated file. 
![alt text](https://github.com/Zhongyun-Huang/Insight_project/blob/master/gut_app/static/image/cancer.csv.png)

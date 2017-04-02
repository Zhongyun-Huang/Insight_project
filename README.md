# Insight_project
  Zhongyun (Julie) did this Insight Project when she was a Insight Health Data Science fellow at Boston in the spring of 2017. 
  
  [Webapp for this project](http://havesomeguts.faith/ "Trust Your Gut")
  
  The motivation of this project is to use patient's gut microbiome sequence data to predict one's risk of having colorectal cancer. All raw data is obtained from a publication reporting a French study on colorectal cancer. Please look at the Pop_F_paper folder to find the original publication and related supplementary data
  
  The input file includes the relative abundancy of the most important gut microbime species highly correlated to colorectal cancer found in each patient (see train_valid.csv). For the 27 species included in the file, 10 are reported in publications to be colorectal cancer related, and 17 are the most abundance species in human guts. 
  This cancer risk prediction problem is treated as a classification. To find the best machine learning method to classify patients into "healthy" or "cancer, I actually tried the following classifiers: logistics regression, SVM, K-nearest neighbors and random forest. Random forest is eventually optimized in terms of hyperparameters and used to build the model since this is a great classifier to handle non-linearity in biology dataset. 
  Nested cross validation with 5-folds is performed on the dataset, and the method reached 80% accuracy with colorectal cancer prediction, with high sensitivity. 
  Final random forest model was pickled to make a webapp with flask hosted on AWS. 

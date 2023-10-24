# Outlier detection using cook's distance
# Multivariate regression using cook's distance
# cook's distance is an estimate of the influence of data points
# cook's distance is a summary of how much a regression model changes when the i'th
# observation is removed from the data.
library(ISLR)
# baseball hitters dataset in ISLR package
head(Hitters)
dim(Hitters)
# check the missing values
is.na(Hitters)
# Remove the NA values using na.omit() function
hittersData <- na.omit(Hitters)
hittersData
# Checking the dimensions after removing the NA's
dim(hittersData)
glimpse(hittersData)
head(hittersData)

# Implementing a multivariate regression model using all features in the dataset
# to predict teh salary of the baseball player.
Salary_Predict_Model1 <- lm(Salary~., data = hittersData)
summary(Salary_Predict_Model1)

# cook's distance
cooksDist_Salary_Predict_Model1 <- cooks.distance(Salary_Predict_Model1)
influential <- cooksDist_Salary_Predict_Model1[(cooksDist_Salary_Predict_Model1 >
                                                  3*(mean(cooksDist_Salary_Predict_Model1, na.rm =TRUE)))]
influential
# 18 players have cook's distance greater than 3x the mean.
# Exclude the 18 players and rerun the model to see if there is better fit of the  regression model.
# Checking the names of influential/outliers players
names_of_the_influential <- names(influential)
names_of_the_influential
outliers <- hittersData[names_of_the_influential, ]
library(dplyr)
# anti_join() function from the dplyr package in R to return all rows in one data frame 
# that do not have matching values in another data frame.
hitters_without_outliers <- hittersData %>% anti_join(outliers)

# Model 2, without the outliers
Salary_Predict_Model2 <- lm(Salary~., data = hitters_without_outliers)
Salary_Predict_Model2
summary(Salary_Predict_Model2)
# improved Adjusted R-squared after the removal of 18 observations
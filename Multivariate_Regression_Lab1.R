# multivariate Regression
setwd("D:/DIBA/ITWS_4600/Resources/Datasets")
multivariate_data <- read.csv("multivariate.csv")
View(multivariate_data)
head(multivariate_data)
attach(multivariate_data)
help("lm") # Fitting Linear Models
# lm is used to fit linear models,including multivariate ones. 
# It can be used to carry out regression, single stratum analysis of variance and analysis of covariance. 
mm <- lm(Homeowners~Immigrant) # here, mm is a R object.
mm
summary(mm)$coef
# The output above shows the estimate of the regression beta coefficients (column Estimate) and
# their significance levels (column Pr(>|t|).
# The intercept is 107494.898 and the coefficient of Immigrant variable is -6656.839.
# The estimated regression equation can be written as follow:
# Homeowners = 107494.898 + (-6656.839)*Immigrant
# We can rewrite it as:
# Homeowners = 107494.898 - 6656.839*Immigrant.
plot(Homeowners~Immigrant)
help("abline")#Add Straight Lines to a Plot
abline(mm)
abline(mm, col= 3, lwd=3) #line color = 3 using this means green,orjust write this col = "green", line width = 3
# Using this formula, for each new value in Immigrant, you can predict the value for Homeowners.
# As an example:
# For Immigrant value = 0, we will get: Homeowners = 107494.898 - 6656.839*0 = 107494.898
# for Immigrant value = 20, we will get: Homeowners = 107494.898 - 6656.839*20 = -25641.88
# Predictions can be easily made using the R function predict().
# In the following example, we predict Homeowners for two Immigrant values: 0 and 20.
# passing the 0 and 20 values as a concatenated list for Immigrants as follows:
install.packages("dplyr") # installation of the %>%
library(dplyr)
newImmigrantdata <- data.frame(Immigrant=c(0,20))
View(newImmigrantdata)
help("predict")
mm%>% predict(newImmigrantdata)
mm <- lm(Homeowners~Immigrant, data = multivariate_data)
plot(Homeowners~Immigrant, main="Regression Line with Data")
abline(mm, col="blue", lwd = 3)
abline(mm, col= 3, lwd=3)
help("attributes") #Object Attribute Lists
attributes(mm)
mm$coefficients


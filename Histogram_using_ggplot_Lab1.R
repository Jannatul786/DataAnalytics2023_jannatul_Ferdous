#Creating Histogram
#View the distribution of one-dimensional data with a histogram
hist(mtcars$mpg, xlab = "Miles/(US) gallon")
#Specify approximate number of bins with breaks
hist(mtcars$mpg, breaks = 10, xlab = "Miles/(US) gallon")
#that because the bins are narrower, there are fewer items in each bin.
hist(mtcars$mpg, breaks = 5, xlab = "Miles/(US) gallon")
hist(mtcars$mpg, breaks = 12, xlab = "Miles/(US) gallon")

#With the ggplot2 package, you can get a similar result using qplot() 
qplot(mtcars$mpg)
#If the vector is in a data frame:
library(ggplot2)
qplot(mpg, data=mtcars, binwidth = 4)
#This is equivalent to:
ggplot(mtcars,aes(x=mpg))+geom_histogram(binwidth = 4)
ggplot(mtcars,aes(x=mpg))+geom_histogram(binwidth = 5)

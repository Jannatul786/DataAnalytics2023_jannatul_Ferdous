install.packages("MASS") #installing the mass package
library(MASS) #load the library MASS
attach(Boston) #attaching the dataset
?Boston #help function with "?"
head(Boston) #show the head of the dataset
dim(Boston) #dimensions of the dataset
names(Boston) #column names of the dataset
str(Boston) #str function shows the structure of the dataset
nrow(Boston) #shows number of rows
ncol(Boston) #shows number of columns
summary(Boston) #it shows the summery(min,1st quartile,median,mean,3rd quartile,max)
exists('statistics')#statistics doesn't exists, that's why checking with exists() function
#Error: object 'statistics' not found
summary(Boston$crim) #it shows the summary of the "crime" column in the dataset
Boston #this is the correct format
#writing "Boston Dataset" will give an error:: 
#Error: 'Boston' is not an exported object from 'namespace:datasets'

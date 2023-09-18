#Creating a dataframe
#Example: RPI weather dataframe.

days <- c('Mon','Tue', 'Wed', 'Thur', 'Fri', 'Sat', 'Sun')
temp <- c(28, 30.5, 32, 31.2, 29.3, 27.9, 26.4) #temperature 'F during the winter 
snowed <- c('T','T','F','F','T','T','F') #snowed on that day , T=true, F= false
help("data.frame")

RPI_Weather_Week <- data.frame(days,temp,snowed) #creating dataframe with func data.frame()
RPI_Weather_Week

#head of the data frame, NOTE: it will only shows the 6 rows;
#usually head() function shows the first 6 rows of the dataframe,
#here we have only 7 rows in the dataframe.
head(RPI_Weather_Week)

#we can take a look at the structure of the dataframe using str() function
str(RPI_Weather_Week)

#summary of the dataframe using the summry() function 
summary(RPI_Weather_Week)

RPI_Weather_Week[1,] #showing the 1st row and all the columns
RPI_Weather_Week[,1] #showing the 1st column and all the rows
RPI_Weather_Week[,"snowed"]
RPI_Weather_Week[,"days"]
RPI_Weather_Week[,"temp"]

RPI_Weather_Week[1:5, c("days", "temp")]
RPI_Weather_Week$temp

#subset method for class 'data.frame':subset(x, subset, select, drop = FALSE, ...)
#x : object to be subsetted
#subset: logical expression indicating elements or rows to keep:missing values are taken as false.
#select expression, indicating columns to select from a data frame.
#drop	: passed on to [ indexing operator.
#...	indicates further arguments to be passed to or from other methods.
subset(RPI_Weather_Week, subset = snowed == T)
help("subset")

#order returns a permutation which rearranges its first argument into ascending or descending order, 
#breaking ties by further arguments. sort.list does the same, using only one argument.
sorted.snowed <- order(RPI_Weather_Week[,'snowed'])
sorted.snowed
RPI_Weather_Week[sorted.snowed, ]
help("order")

#RPI_Weather_Week[Descending_snowed, ]
dec.snow <- order(RPI_Weather_Week$temp)
dec.snow
RPI_Weather_Week[dec.snow, ]

#Creating dataframes
#Creating empty dataframes
empty.DataFrame <- data.frame()
v1 <- 1:10
v1
letters
help("letters")
v2 <- letters[1:10]
df <- data.frame(col.name.1 = v1, col.name.2 = v2)
df

#Importing data and exporting data:
#writing to a CSV file:
write.csv(df, file = 'saved_df1.csv')
df2 <- read.csv('saved_df1.csv')
df2

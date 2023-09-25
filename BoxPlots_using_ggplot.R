#Creating Box-plots
#When x is a factor (as opposed to a numeric vector), it will automatically create a box plot:
plot(ToothGrowth$supp, ToothGrowth$len, xlab= "Supplement type", ylab="Tooth length")

#If the two vectors are in the same data frame, use formula syntax:
#Formula syntax
boxplot(len~supp, data = ToothGrowth, xlab= "Supplement type", ylab="Tooth length")
#Putting interaction of two variables on x-axis
boxplot(len~supp + dose, data = ToothGrowth, xlab= "Supplement type", ylab="Tooth length")
#this is equivalent to this: using the ggplot2 package [qplot()]
library(ggplot2)
qplot(ToothGrowth$supp, ToothGrowth$len, geom = "boxplot", xlab= "Supplement type", ylab="Tooth length")
#If the two vectors are already in the same data frame, use the following syntax:
qplot(supp, len, data = ToothGrowth, geom = "boxplot", xlab= "Supplement type", ylab="Tooth length")
#this is equivalent to:
ggplot(ToothGrowth,aes(x=supp, y=len))+geom_boxplot()+labs(x = "Supplement type", y = "Tooth length")
#Using three separate vectors
qplot(interaction(ToothGrowth$supp,ToothGrowth$dose), ToothGrowth$len, geom = "boxplot")
# Alternatively, getting the columns from the data frame:
qplot(interaction(supp,dose), len, data = ToothGrowth, geom = "boxplot")
#This is equivalent to:
ggplot(ToothGrowth, aes(x = interaction(supp,dose), y = len)) + geom_boxplot()

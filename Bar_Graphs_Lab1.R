#Creating Bar Graphs
#BOD: Biochemical Oxygen Demand
help("barplot")
barplot(BOD$demand, names.arg = BOD$Time)
library(ggplot2)
ggplot(data = BOD, aes(x = Time, y = demand)) +
  geom_bar(stat = "identity") +
  labs(x = "Time", y = "Demand")
# Convert the x variable to a factor, so that it is treated as discrete
ggplot(data = BOD, aes(x = factor(Time), y = demand)) +
  geom_bar(stat = "identity") +
  labs(x = "Time", y = "Demand")

table(mtcars$cyl)
barplot(table(mtcars$cyl))#generate a table of counts
qplot(mtcars$cyl, xlab = "Number of cylinders") #cyl is continuous here
qplot(factor(mtcars$cyl),  xlab = "Number of cylinders") #treat cyl as discrete

#Bar graph of counts
qplot(factor(cyl),data = mtcars, xlab = "Number of cylinders")
#This is equivalent to:
ggplot(mtcars,aes(x = factor(cyl)))+geom_bar(fill="coral3", color="black")


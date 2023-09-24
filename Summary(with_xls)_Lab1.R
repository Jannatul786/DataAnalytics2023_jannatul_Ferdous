#Excersise 1 : Exploring the Distribution
#---------------------------------------#

setwd("D:/DIBA/ITWS_4600/Resources/EPI_Dataset")
library("readxl")
EPI_data_2010 <- read_excel("EPI_data_2010.xls", sheet = "EPI2010_all countries")
View(EPI_data_2010)
attach(EPI_data_2010) #sets the default object
View(EPI_data_2010)

EPI_data_2010$EPI 
class(EPI_data_2010$EPI)

#For EPI col
EPI_numeric <- as.numeric(EPI_data_2010$EPI)
EPI_numeric

summary(E) #stats
fivenum(E, na.rm = TRUE)

#For DALY col
DALY_numeric <- as.numeric(EPI_data_2010$DALY)
tf1 <- is.na(DALY_numeric)
tf1
D <-  DALY_numeric[!tf1]
D
summary(D)
fivenum(D, na.rm = TRUE)

boxplot(E,D, names = c('EPI', 'DALY'))

stem(E)
stem(D)
#Stem and Leaf plot is a technique of displaying the frequencies with which some classes of values may occur. 
#output: records are arranged based on their most significant digit. The stem is the left side of the chart while the right side is the leaf.
hist(E)
hist(E, breaks = seq(30.,95.,1.0), prob = TRUE)
lines(density(E, na.rm = TRUE, bw = 1.)) 
#OR,
lines(density(E, na.rm = TRUE, bw = "SJ"))

xn <- seq(30,95,1) #incremented by 1, like 31,32,......,94,95
xn
#Normal Distribution: dnorm(x, mean = 0, sd = 1, log = FALSE)
#x: vector of quantiles.
qn <- dnorm(xn, mean = 63, sd = 5, log = FALSE)
help("dnorm")
lines(xn,qn)
lines(xn, .4*qn)
ln <- dnorm(xn, mean = 44, sd = 5,log = FALSE)
lines(xn, .26*ln)

#Rug plot
rug(E)

#A rug plot is a compact visualisation designed to supplement a 2d display with the two 1d marginal distributions.
#Rug plots display individual cases so are best used with smaller datasets.
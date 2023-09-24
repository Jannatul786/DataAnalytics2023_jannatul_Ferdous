#Excersise 1 : Exploring the Distribution
#---------------------------------------#

setwd("D:/DIBA/ITWS_4600/Resources/EPI_Dataset")
EPI_data_2010 <- read.csv("EPI_data_2010.csv")
View(EPI_data_2010)

attach(EPI_data_2010) #sets the default object
#fix(EPI_data_2010) #Launches a simple data editor
names(EPI_data_2010) <- as.matrix(EPI_data_2010[1,])
EPI_data_2010 <- EPI_data_2010[-1,] #change the first row to be the header in R
#or,
EPI_data_2010[] <- lapply(EPI_data_2010, function(x){
  type.convert(as.character(x))
})
EPI_data_2010
View(EPI_data_2010)
EPI_data_2010$EPI #prints out values from data file which has column "EPI"
class(EPI_data_2010$EPI)
#tf <- is.na(EPI_data_2010$EPI) #records true values if the value is NA
#tf
#E <- EPI_data_2010$EPI[!tf] #filters out NA values , new array
#E
summary(EPI_data_2010$EPI) #stats
summary(EPI_data_2010$DALY)

fivenum(EPI_data_2010$EPI, na.rm = TRUE)
fivenum(EPI_data_2010$DALY, na.rm = TRUE)

boxplot(EPI_data_2010$EPI, EPI_data_2010$DALY, names = c('EPI', 'DALY'))

stem(EPI_data_2010$EPI) 
#Stem and Leaf plot is a technique of displaying the frequencies with which some classes of values may occur. 
#output: records are arranged based on their most significant digit. The stem is the left side of the chart while the right side is the leaf.
hist(EPI_data_2010$EPI)
hist(EPI_data_2010$EPI, breaks= seq(30.,95.,1.0), prob = TRUE)
lines(density(EPI_data_2010$EPI, na.rm = TRUE, bw = 1.)) 
#OR,
lines(density(EPI_data_2010$EPI, na.rm = TRUE, bw = "SJ"))

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

rug(EPI_data_2010$EPI)
#A rug plot is a compact visualisation designed to supplement a 2d display with the two 1d marginal distributions.
#Rug plots display individual cases so are best used with smaller datasets.
#Exercise 1: Fitting a distribution beyond histograms
#---------------------------------------------------#
setwd("D:/DIBA/ITWS_4600/Resources/EPI_Dataset")
EPI_data_2010 <- read.csv("EPI_data_2010.csv")
View(EPI_data_2010)

attach(EPI_data_2010)
names(EPI_data_2010) <- as.matrix(EPI_data_2010[1,])
EPI_data_2010 <- EPI_data_2010[-1,] #change the first row to be the header in R
View(EPI_data_2010)
EPI_data_2010$EPI

#Cumulative density function
#~~~~~~~~~~~~~~~~~~~~~~~~~~#
#ecdf() allows to plot a feature of data in order from least to greatest 
#and see the whole feature as if is distributed across the data set.

#do.points: logical; if TRUE, also draw points at the (xlim restricted) knot locations. 
#Default is true, for sample size <100
#verticals: logical; if TRUE, draw vertical lines at steps.

help(ecdf) #Empirical Cumulative Distribution Function
plot(ecdf(EPI_data_2010$EPI), do.points = FALSE, verticals = TRUE)

#Quantile-Quantile(Q-Q) Plot/probability plot
#qqPlot allows the user to specify a number of different distributions 
#in addition to the normal distribution, 
#and to optionally estimate the distribution parameters of the fitted distribution
help("par") #Set or Query Graphical Parameters
par(pty = "s")
#A character specifying the type of plot region to be used; 
#"s" generates a square plotting region and 
#"m" generates the maximal plotting region.

help("qqnorm")
help("qqplot")
#qqnorm(EPI_data_2010$EPI);qqline(EPI_data_2010$EPI)
qqnorm(EPI_data_2010$EPI)
qqline(EPI_data_2010$EPI) #adding the line to Q-Q plot
x <- seq(30,95,1)
qqplot(qt(ppoints(250),df=5), x, xlab = "Q-Q plot for t-distribution") 
#The function qt(x, df) returns the value of the inverse cumulative density function (cdf)
#ppoints() is used in qqplot and qqnorm to generate the set of probabilities at which to evaluate the inverse distribution.
qqline(x)

#~~~~For DALY~~~~~~#
plot(ecdf(EPI_data_2010$DALY), do.points = FALSE, verticals = TRUE)
par(pty = "s")
qqnorm(EPI_data_2010$DALY)
qqline(EPI_data_2010$DALY)
x <- seq(30,95,1)
qqplot(qt(ppoints(250), df=5), x, xlab = "Q-Q plot for t-distribution")
qqline(x)

#~~~~For WATER_H~~~~~~#
plot(ecdf(EPI_data_2010$WATER_H), do.points = FALSE, verticals = TRUE)
qqnorm(EPI_data_2010$WATER_H)
qqline(EPI_data_2010$WATER_H)
x <- seq(30,95,1)
qqplot(qt(ppoints(250), df=5), x, xlab = "Q-Q plot for t-distribution")
qqline(x)

#intercomparing the distributions
qqplot(EPI_data_2010$EPI, EPI_data_2010$DALY)
qqplot(EPI_data_2010$EPI, EPI_data_2010$ECOSYSTEM)
qqplot(EPI_data_2010$EPI, EPI_data_2010$ENVHEALTH)
qqplot(EPI_data_2010$EPI, EPI_data_2010$AIR_H)
qqplot(EPI_data_2010$EPI, EPI_data_2010$WATER_H)
qqplot(EPI_data_2010$EPI, EPI_data_2010$BIODIVERSITY)

boxplot(EPI_data_2010$EPI, EPI_data_2010$DALY)
boxplot(EPI_data_2010$EPI, EPI_data_2010$ECOSYSTEM)
boxplot(EPI_data_2010$EPI, EPI_data_2010$ENVHEALTH)
boxplot(EPI_data_2010$EPI, EPI_data_2010$AIR_H)
boxplot(EPI_data_2010$EPI, EPI_data_2010$WATER_H)
boxplot(EPI_data_2010$EPI, EPI_data_2010$BIODIVERSITY)


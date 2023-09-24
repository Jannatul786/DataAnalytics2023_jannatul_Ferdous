#Exercise 2: Filtering populations
#---------------------------------------------------#
setwd("D:/DIBA/ITWS_4600/Resources/EPI_Dataset")
library("readxl")
EPI_data_2010 <- read_excel("EPI_data_2010.xls", sheet = "EPI2010_all countries")
View(EPI_data_2010)
attach(EPI_data_2010) #sets the default object
#View(EPI_data_2010)

EPI_data_2010$Landlock
EPI_data_2010$EPI_regions
EPI_data_2010$GEO_subregion

#conditional Filtering
#Landlock
EPILand<-EPI_data_2010[!EPI_data_2010$Landlock,] #filtering non-landlock countries
EPILand



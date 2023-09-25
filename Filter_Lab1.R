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

# Conditional filtering
#Landlock
EPILand <- EPI_data_2010[!EPI_data_2010$Landlock, ]
View(EPILand)
Eland <- EPILand[!is.na(EPILand$Landlock), ]
View(Eland)
hist(Eland$No_surface_water, main = "Histogram of No_surface_water",
     xlab = "No_surface_water", ylab = "Frequency",
     col = "aquamarine1")
hist(Eland$Desert, breaks = seq(0,1,0.1), prob = TRUE,
     main = "Histogram of Desert with Probability Density",
     xlab = "Desert", ylab = "Density",
     col = "burlywood1")
hist(Eland$High_Population_Density, breaks = seq(0,1,0.2), prob = TRUE,
     main = "Histogram of High_Population_Density with Probability Density",
     xlab = "High_Population_Density", ylab = "Density",
     col = "chartreuse4")

# Filtering in EPI_regions(using specific condition)
EPI_South_Asia <- EPI_data_2010[EPI_data_2010$EPI_regions == "South Asia", ]
View(EPI_South_Asia)

# Filter for Central Europe and Meso America in GEO_Subregion
CenralEurope_MesoAmerica <- subset(EPI_data_2010, GEO_subregion %in% c("Central Europe", "Meso America"))
View(CenralEurope_MesoAmerica)

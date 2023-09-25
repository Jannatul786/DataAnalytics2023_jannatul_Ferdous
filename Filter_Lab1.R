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

# Filtering based on specified conditions in EPI_regions
EPI_South_Asia <- EPI_data_2010[EPI_data_2010$EPI_regions == "South Asia", ]
View(EPI_South_Asia)

# Filter for Central Europe and Meso America in GEO_Subregion
CenralEurope_MesoAmerica <- subset(EPI_data_2010, GEO_subregion %in% c("Central Europe", "Meso America"))
View(CenralEurope_MesoAmerica)

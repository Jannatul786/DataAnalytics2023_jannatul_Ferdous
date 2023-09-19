setwd("D:/DIBA/ITWS_4600/Resources/EPI_Dataset")
data <- read.csv("EPI_Data.csv")
View(data)

attach(data) #sets the default object
data
fix(data) #Launches a simple data editor
data$EPI #prints out values from data file which has column "EPI"

tf <- is.na(data$EPI) #records true values if the value is NA
tf
E <- data$EPI[!tf] #filters out NA values , new array
E
summary(EPI) #stats
fivenum(EPI, na.rm = TRUE)
help("fivenum")

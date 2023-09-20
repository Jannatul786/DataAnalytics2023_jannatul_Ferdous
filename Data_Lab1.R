setwd("D:/DIBA/ITWS_4600/Resources/EPI_Dataset")
#To set the correct folder, so to set the working directory equal to the folder where your file is located

#reading csv file
EPI_data_2010 <- read.csv("EPI_data_2010.csv")
View(EPI_data_2010)
#or,EPI <- read.csv("D:\\DIBA\\ITWS_4600\\Resources\\EPI\\EPI_data_2010.csv")
#need to escape your backslashes by doubling them: c:\\xxx\\classes\\R_Prog\\ etc

attach(EPI_data_2010) #sets the default object
fix(EPI_data_2010) #Launches a simple data editor
names(EPI_data_2010) <- as.matrix(EPI_data_2010[1,])
EPI_data_2010 <- EPI_data_2010[-1,] #change the first row to be the header in R
#or,
EPI_data_2010[] <- lapply(EPI_data_2010, function(x){
  type.convert(as.character(x))
})
EPI_data_2010
View(EPI_data_2010)
EPI_data_2010$EPI #prints out values from data file which has column "EPI"

tf <- is.na(EPI_data_2010$EPI) #records true values if the value is NA
tf
E <- EPI_data_2010$EPI[!tf] #filters out NA values , new array
E

#read the xls/xlsx files,
#install.packages("readxl")
#library("readxl")#Loading

#install.packages("rio")
#library(rio)
# reading data from all sheets
#data <- import_list("EPI_data_2010.xls" , rbind=TRUE)

#View(data)
#data$EPI
#read xls files
#EPI_data_2010 <- read_excel("EPI_data_2010.xls")
#EPI_data_2010
#sheet_names <- excel_sheets("EPI_data_2010.xls")
#sheet_names
#read_all_sheets <- lapply(sheet_names, function(x){
# as.data.frame(read_excel("EPI_data_2010.xls", sheet = x))})




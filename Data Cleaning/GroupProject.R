# 1. Data Cleaning

#set working directory
setwd("~/R/GroupProject")

#read the csv file
data <- read.csv("unemployment_rate.csv")

#show the dataset
data

#rename the Columns
names(data)[1] <- "Year"
names(data)[2] <- "State"
names(data)[3] <- "Unemployment_Rate"
head(data)

#remove the Years from Year 1982 to 2013
library(dplyr)
data2 <- anti_join(data,data[52:612,])
data2

#Using transpose data
data3 <- tidyr::spread(data2, Year, Unemployment_Rate)

#Export the clean data to csv
write.csv(data3, "Unemployment_Rate_Clean.csv")



 

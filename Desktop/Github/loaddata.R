#getwd() to find the directory
getwd()
setwd("C:\\Users\\Minhao\\Desktop\\Coursera\\Datascience Specialization\\5_Exploratory Data Analysis\\Project 1")

## This file is for loading the large dataset.
filename <- "C:\\Users\\Minhao\\Desktop\\Coursera\\Datascience Specialization\\5_Exploratory Data Analysis\\Project 1\\household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")

# Checking the dimension of our data 2075259rows 9cols
dim(data) 
attach(data)

## We only need data of 2 days.
subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) # 2880 10
attach(newData)



#----------EXPLORATORY DATA ANALYSIS_ASSIGNMENT 1------------------
# STEP 1: I LOAD PACKAGES AND DATASET
library(lubridate)
library(lattice)
library(ggplot2)
setwd ("C:/Users/ealonso/Desktop/Coursera R/Exploratory data analysis/")
base<-read.table("household_power_consumption.txt",header=TRUE,sep=";",dec=".",na.strings='?')

#STEP 2: I OBTAIN A SUBSET BETWEEN DATES 2007-02-01 AND 2007-02-02. 
#I TRANSFORM DATES AND CRATE A NEW VAR "DATETIME". 
#I ALSO REMOVE THE ORIGINAL DATASET.
muestra<-subset(base, base$Date=="1/2/2007" | base$Date=="2/2/2007")
muestra$Date<-dmy(muestra$Date)
muestra$Time<-hms(muestra$Time)
muestra$Datetime<-muestra$Date+muestra$Time
rm(base)
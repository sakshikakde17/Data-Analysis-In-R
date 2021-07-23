#R Data Analysis

getwd()
setwd("D:\\Sakshi Github\\R Data Analysis")
getwd()
dataset<-read.csv("agriculture.csv")
View(dataset)   #viewing Dataset

ncol(dataset)   #no of columns in dataset
nrow(dataset)   #no of rows in dataset
summary(dataset)   #summary of dataset

#Task 1 ***********************************************************************
#To Compare Crop Production in Different States of India using Bar graphs.

state<-c("UP","Kr","Guj","AP","Mh") 
arhar<-dataset$Yield..Quintal..Hectare..[dataset$Crop=="ARHAR"]
arhar
barplot(arhar,
        ylim = c(0,13),
        main="States & their Arhar Production",
        xlab="States",
        ylab="Yield of Arhar",
        names.arg=state,
        col="red")

cotton<-dataset$Yield..Quintal..Hectare..[dataset$Crop=="COTTON"]
cotton
barplot(cotton,
        ylim = c(0,25),
        main="States & their Cotton Production",
        xlab="States",
        ylab="Yield of Cotton",
        col="lightblue",
        names.arg=state)

state2<-c("Mh","Puj","AP","Guj","Har")
groundnut<-dataset$Yield..Quintal..Hectare..[dataset$Crop=="GROUNDNUT"]
groundnut
barplot(groundnut,
        ylim = c(0,20),
        main="States & their Groundnut Production",
        xlab="States",
        ylab="Yield of Groundnut",
        col="blue",
        names.arg=state2)

state3<-c("Ori","Raj","Kar","AP","Mh")
moong<-dataset$Yield..Quintal..Hectare..[dataset$Crop=="MOONG"]
moong
barplot(moong,
        ylim = c(0,20),
        main="States & their Moong Production",
        xlab="States",
        ylab="Yield of Moong",
        col="orange",
        names.arg=state3)

state3<-c("UP","Kar","AP","Mh","Tami")
sugarcane<-dataset$Yield..Quintal..Hectare..[dataset$Crop=="SUGARCANE"]
barplot(sugarcane,
        ylim = c(0,1000),
        main="States & their Sugarcane Production",
        xlab="States",
        ylab="Yield of Sugarcane",
        col="green",
        names.arg=state3)

paddy<-dataset$Yield..Quintal..Hectare..[dataset$Crop=="PADDY"]
barplot(paddy,
        ylim = c(0,70),
        main="States & their Paddy Production",
        xlab="States",
        ylab="Yield of Paddy",
        col="red",
        names.arg=state)

#Task 2 ****************************************************************************
#Comparing the Production in Quintal of Two States Gujarat and Andhra 
#Pradesh Using Boxplot

guj<-dataset$Cost.of.Production....Quintal..C2[dataset$State=="Gujarat"]
up<-dataset$Cost.of.Production....Quintal..C2[dataset$State=="Uttar Pradesh"]
boxplot(guj,main="Cost Of Production in Gujarat",xlab="State",ylab="Production in Quintal",col="purple")
boxplot(up,main="Cost Of Production in UP",xlab="State",ylab="Production in Quintal",col="orange")

#Task 3 ***************************************************************************
#Comparing The Cultivation of crops in Area 1 and Area 2.
boxplot(dataset$Cost.of.Cultivation....Hectare..A2.FL,
        dataset$Cost.of.Cultivation....Hectare..C2,
        main="Cost of cultivation in 2 Hectares",xlab="Area",
        ylab="Cultivation",col="yellow")

#**************************END*******************************

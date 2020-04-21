library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

SCC1<-SCC[,c(1,4)]

#Merging Datasets 

Data1<-merge(NEI,SCC1,"SCC")
head(Data1)
#Subsetting data

Coal<-subset(Data1,EI.Sector=="Fuel Comb - Electric Generation - Coal")

#plotting data 
qplot(year,Emissions,data = Coal,geom = c("point","smooth"),method="lm")

png("Plot4.png")
qplot(year,Emissions,data = Coal,geom = c("point","smooth"),method="lm")
dev.off()




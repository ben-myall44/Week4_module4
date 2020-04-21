library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Subsetting
Balt<-subset(NEI,fips=="24510"&type=="ON-ROAD")

#Taking Logs 
Balt$log<-log10(Balt$Emissions)

#creating a boxplot 
boxplot(log~year,data=Balt)


png("Plot5.png")
boxplot(log~year,data=Balt)
dev.off()
library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Subsetting

Balt<-subset(NEI,fips=="24510")

#Creating the Q plot

qplot(year,Emissions,data = Balt,facets = .~type,geom = c("point","smooth"),method="lm")



png("Plot3.png")
qplot(year,Emissions,data = Balt,facets = .~type,geom = c("point","smooth"),method="lm")
dev.off()


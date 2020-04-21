
library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")



Balt<-subset(NEI,(fips=="24510")&type=="ON-ROAD")




LA<-subset(NEI,fips=="06037"&type=="ON-ROAD")

par(mfrow=c(1,2),mar=c(4,4,2,1))


qplot(year,Emissions,data = Balt,geom = c("point","smooth"),method="lm")
qplot(year,Emissions,data = LA,geom = c("point","smooth"),method="lm")

png("Plot6.png")
par(mfrow=c(1,2),mar=c(4,4,2,1))


qplot(year,Emissions,data = Balt,geom = c("point","smooth"),method="lm")
qplot(year,Emissions,data = LA,geom = c("point","smooth"),method="lm")

dev.off()
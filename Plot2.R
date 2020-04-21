library(dplyr)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Balt<-subset(NEI,fips=="24510")

Bar<-tapply(Balt$Emissions,Balt$year,sum)
Bar

barplot(Bar,col="blue")

title(main = "Barchart to show total emmissions by year in Baltimore City",xlab="Year",ylab="Total Emmisions")

png("plot2.png")


barplot(Bar,col="blue")

title(main = "Barchart to show total emmissions by year in Baltimore City",xlab="Year",ylab="Total Emmisions")

dev.off()
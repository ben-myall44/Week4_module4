
#loading data

library(dplyr)


NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

head(NEI)
head(SCC)

#finding out total
sum(NEI$Emissions)
#Creating the bar Chart

Bar<-tapply(NEI$Emissions,NEI$year,sum)

barplot(Bar,col="red")

title(main = "Barchart to show total emmissions by year",xlab="Year",ylab="Total Emmisions")

#Saving PNG file 

png("Plot1.png")


Bar<-tapply(NEI$Emissions,NEI$year,sum)

barplot(Bar,col="red")

title(main = "Barchart to show total emmissions by year",xlab="Year",ylab="Total Emmisions")

dev.off()


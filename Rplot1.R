NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Emissions <- aggregate(NEI[, 'Emissions'], by=list(NEI$year), FUN=sum)
Emissions$PM <- round(Emissions[,2]/1000,2)

dev.new()

barplot(Emissions$PM, names.arg=Emissions$Group.1, 
         main=expression('Total Emission of PM'[2.5]),
         xlab='Year', ylab=expression(paste('PM', ''[2.5], ' in Kilotons')))
dev.off()
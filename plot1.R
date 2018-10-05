# ExData_Plotting1 
# Joris Vroegop 5 Oct 2018

setwd("C:/Users/jvroegop/Documents/Coursera/Course 4")
hpc <- read.table("household_power_consumption.txt", header=T, sep=";", stringsAsFactors=F, na.string="?")
hpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),]

png("./ExData_Plotting1/plot1.png", w=480, h=480)
par('bg'=NA)
hist(hpc$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.off()

hpc$dt <- strptime(paste(as.character(hpc$Date), as.character(hpc$Time)),"%d/%m/%Y %H:%M:%S") 
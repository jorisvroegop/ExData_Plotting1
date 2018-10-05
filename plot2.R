# ExData_Plotting1 
# Joris Vroegop 5 Oct 2018

setwd("C:/Users/jvroegop/Documents/Coursera/Course 4")
hpc <- read.table("household_power_consumption.txt", header=T, sep=";", stringsAsFactors=F, na.string="?")
hpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),]

hpc$dt <- strptime(paste(as.character(hpc$Date), as.character(hpc$Time)),"%d/%m/%Y %H:%M:%S") 

png("./ExData_Plotting1/plot2.png", w=480, h=480)
par('bg'=NA)
par(mar=c(3,4,1,1))
plot(hpc$dt, hpc$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()
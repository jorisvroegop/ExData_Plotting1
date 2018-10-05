# ExData_Plotting1 
# Joris Vroegop 5 Oct 2018

setwd("C:/Users/jvroegop/Documents/Coursera/Course 4")
hpc <- read.table("household_power_consumption.txt", header=T, sep=";", stringsAsFactors=F, na.string="?")
hpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),]

hpc$dt <- strptime(paste(as.character(hpc$Date), as.character(hpc$Time)),"%d/%m/%Y %H:%M:%S") 

png("./ExData_Plotting1/plot3.png", w=480, h=480)
par('bg'=NA)
plot(hpc$dt, hpc$Sub_metering_1, type="l", xlab="",
     ylab="Energy sub metering", col="black")
lines(hpc$dt, hpc$Sub_metering_2, type="l", col="red")
lines(hpc$dt, hpc$Sub_metering_3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       , lty=c(1,1,1), col = c("black", "red", "blue"))
dev.off()
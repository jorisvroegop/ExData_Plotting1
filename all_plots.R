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

png("./ExData_Plotting1/plot2.png", w=480, h=480)
par('bg'=NA)
par(mar=c(3,4,1,1))
plot(hpc$dt, hpc$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()

png("./ExData_Plotting1/plot3.png", w=480, h=480)
par('bg'=NA)
plot(hpc$dt, hpc$Sub_metering_1, type="l", xlab="",
     ylab="Energy sub metering", col="black")
lines(hpc$dt, hpc$Sub_metering_2, type="l", col="red")
lines(hpc$dt, hpc$Sub_metering_3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       , lty=c(1,1,1), col = c("black", "red", "blue"))
dev.off()

png("./ExData_Plotting1/plot4.png", w=480, h=480)
par(bg=NA)
par(mfrow=c(2,2))

plot(hpc$dt, hpc$Global_active_power, type="l", xlab="", ylab="Global Active Power")

plot(hpc$dt, hpc$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(hpc$dt, hpc$Sub_metering_1, type="l", xlab="",
     ylab="Energy sub metering", col="black")
lines(hpc$dt, hpc$Sub_metering_2, type="l", col="red")
lines(hpc$dt, hpc$Sub_metering_3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       , lty=c(1,1,1), col = c("black", "red", "blue"), bty = "n")

plot(hpc$dt, hpc$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()

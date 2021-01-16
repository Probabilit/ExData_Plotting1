
data <- read.table("household_power_consumption.txt", sep =";", header =TRUE, na.strings = "?")
data1 <- subset(data, Date %in%  c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
#1,1
plot(datetime, data1$Global_active_power, type ="l", xlab="", 
     ylab = "Global Active Power (kilowatts)")
#1,2
plot(datetime, data1$Voltage, type="l", xlab="datetime", ylab="Voltage")
#1,3
plot(datetime, data1$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, data1$Sub_metering_2, type="l", col="red")
lines(datetime, data1$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, 
       col=c("black", "red", "blue"))
#1,4
plot(datetime, data1$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()







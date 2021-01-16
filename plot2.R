
data <- read.table("household_power_consumption.txt", sep =";", header =TRUE, na.strings = "?")
data1 <- subset(data, Date %in%  c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width = 480, height = 480)
plot(datetime, data1$Global_active_power, type ="l", xlab="", 
     ylab = "Global Active Power (kilowatts)")
dev.off() 


 
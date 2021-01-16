
data <- read.table("household_power_consumption.txt", sep =";", header =TRUE, na.strings = "?")
data1 <- subset(data, Date %in%  c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
png("plot1.png", width=480, height=480)
hist(data1$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()
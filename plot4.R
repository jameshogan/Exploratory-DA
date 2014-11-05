# Plot 4.R
# read data in 
power <- read.csv("~/Desktop/Coursera/Exploratory DA/household_power_consumption.txt", sep=";", na.strings="?")
, 
power$Date <- strptime(paste(power$Date, power$Time, sep = " "), format = "%Y-%m-%d %H:%M:%S")
# make plot (2x2 plot)
par(mfrow = c(2,2))
plot(power$Date, power$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
plot(power$Date, power$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(power$Date, power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(power$Date, power$Sub_metering_2, col = "red")
lines(power$Date, power$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"), bty = "n")
plot(power$Date, power$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

#### Creating png file
png(filename = "plot4.png", width = 480, height= 480)
par(mfrow = c(2,2))
plot(power$Date, power$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
plot(power$Date, power$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(power$Date, power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(power$Date, power$Sub_metering_2, col = "red")
lines(power$Date, power$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"), bty = "n")
plot(power$Date, power$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()


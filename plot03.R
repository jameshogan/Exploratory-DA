#plot3.R
# read in data and create date strptime
power <- read.csv("~/Desktop/Coursera/Exploratory DA/household_power_consumption.txt", sep=";", na.strings="?")
, 
power$Date <- strptime(paste(power$Date, power$Time, sep = " "), format = "%Y-%m-%d %H:%M:%S")
# make plot
plot(power$Date, power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(power$Date, power$Sub_metering_2, col = "red")
lines(power$Date, power$Sub_metering_3, col = "blue")
# add legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"))

#### Creating png file
png(filename = "plot3.png", width = 480, height= 480)
plot(power$Date, power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(power$Date, power$Sub_metering_2, col = "red")
lines(power$Date, power$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"))
dev.off()

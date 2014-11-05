#Plot2.R
#read data in 
power <- read.csv("~/Desktop/Coursera/Exploratory DA/household_power_consumption.txt", sep=";", na.strings="?")
#create strptime date
power$Date <- strptime(paste(power$Date, power$Time, sep = " "), format = "%Y-%m-%d %H:%M:%S")
# make plot
plot(power$Date, power$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# create plot in png file
png(filename = "plot2.png", width = 480, height= 480)
plot(power$Date, power$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
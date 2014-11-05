# Plot 1.R
# read in data 
power <- read.csv("~/Desktop/Coursera/Exploratory DA/household_power_consumption.txt", sep=";", na.strings="?")
#Set date
power$Date <- as.Date(power$Date, format = "%d/%m/%Y")
# create histogram
hist(power$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

# create plot in png file
png(filename = "plot1.png", width = 480, height= 480)
hist(power$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
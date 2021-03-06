data <- read.csv('household_power_consumption.txt', na.strings='?', sep=';')
selection <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
selection$DateTime <- strptime(with(selection, paste(Date, Time, sep="-")), "%d/%m/%Y-%H:%M:%S")
plot(selection$DateTime, selection$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type='l')
dev.copy(png, "plot2.png")
dev.off()

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

# Top-left
plot(data$DateTime, data$Global_active_power, type="l", ylab="Global Active Power", xlab="")

# Top-right
plot(data$DateTime, data$Voltage, type="l", ylab="Voltage", xlab="datetime")

# Bottom-left
plot(data$DateTime, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, bty="n")

# Bottom-right
plot(data$DateTime, data$Global_reactive_power, type="l", ylab="Global Reactive Power", xlab="datetime")

dev.off()

## Pilot 4

png('plot4.png')
par(mfrow=c(2,2))

plot(sub_data$timeUpdate, 
     sub_data$Global_active_power, 
     ylab="Global Active Power", 
     xlab="",
     type = "l")

plot(sub_data$timeUpdate, 
     sub_data$Voltage, 
     ylab="Voltage", 
     xlab="datetime",
     type = "l")

plot(sub_data$timeUpdate, sub_data$Sub_metering_1, type="l", 
     col ="black", ylab = "Energy sub metering", xlab = "")
lines(sub_data$timeUpdate, sub_data$Sub_metering_2, col ="red")
lines(sub_data$timeUpdate, sub_data$Sub_metering_3, col ="blue")
legend("topright", bty="n", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, col=c("black", "red", "blue"))

plot(sub_data$timeUpdate, 
     sub_data$Global_reactive_power, 
     ylab="Global_reactive_power", 
     xlab="datetime",
     type = "l")
dev.off()

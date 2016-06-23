# Plot 3

png('plot3.png')

plot(sub_data$timeUpdate, sub_data$Sub_metering_1, type="l", 
     col ="black", ylab = "Energy sub metering", xlab = "")
lines(sub_data$timeUpdate, sub_data$Sub_metering_2, col ="red")
lines(sub_data$timeUpdate, sub_data$Sub_metering_3, col ="blue")
legend("topright", col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty="solid")
       
dev.off();

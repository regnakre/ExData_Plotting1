## Pilot 2
png('plot2.png')
plot(sub_data$timeUpdate, sub_data$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
dev.off();

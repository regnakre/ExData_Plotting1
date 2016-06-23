## Pilot 1

#read the data
data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")

#filter by the date
sub_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

#create a new colum with Date&Time format
timeUpdate <- strptime(paste(sub_data$Date, sub_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#merge the new column to the dataset
sub_data <- cbind(timeUpdate, sub_data)

#discard the old Date, Time fields
sub_data <- subset(sub_data, select = -c(2,3))

## Pilot 1: Histogram of Global Active Power (kilowatts)
png('plot1.png')
hist(subdata$Global_active_power, 
     col="red",
     xlab="Global Active Power (kilowatts)", 
     ylab="Frequency",
     main = "Global Active Power")
dev.off();

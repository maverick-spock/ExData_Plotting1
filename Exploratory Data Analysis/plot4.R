data <- read.csv("C:/Users/USER/Desktop/Course era/ExData_Plotting1/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?")
newdata <- subset(data,Date=="1/2/2007" | Date == "2/2/2007")
newdata$DateTime <- strptime(paste(newdata$Date, newdata$Time),"%d/%m/%Y %H:%M:%S")
png( filename="C:/Users/USER/Desktop/Course era/ExData_Plotting1/Exploratory Data Analysis/plot4.png", width=400, height =400, units = "px", bg="transparent")
par(mfrow = c(2, 2))
plot(newdata$DateTime, newdata$Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")

plot(newdata$DateTime, newdata$Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")

plot(newdata$DateTime, newdata$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(newdata$DateTime, newdata$Sub_metering_2, col = "red")
lines(newdata$DateTime, newdata$Sub_metering_3, col = "blue")
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

plot(newdata$DateTime, newdata$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = "Global_reactive_power")
dev.off()


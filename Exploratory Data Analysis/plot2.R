data <- read.csv("C:/Users/USER/Desktop/Course era/ExData_Plotting1/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?")
newdata <- subset(data,Date=="1/2/2007" | Date == "2/2/2007")
newdata$DateTime <- strptime(paste(newdata$Date, newdata$Time),"%d/%m/%Y %H:%M:%S")
png( filename="C:/Users/USER/Desktop/Course era/ExData_Plotting1/Exploratory Data Analysis/plot2.png", width=400, height =400, units = "px", bg="transparent")
plot(newdata$DateTime,newdata$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()


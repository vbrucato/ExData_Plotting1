data <- "C:/Users/Vincent/Desktop/Coursera//ProjetsR/household_power_consumption.txt"
data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
february <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
days <- strptime(paste(february$Date, february$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalactivepower <- as.numeric(february$Global_active_power)
submet1 <- as.numeric(february$Sub_metering_1)
submet2 <- as.numeric(february$Sub_metering_2)
submet3 <- as.numeric(february$Sub_metering_3)

png("plot3.png", width=480, height=480)

plot(days, submet1, type="l", ylab="Energy sub metering", xlab="")
lines(days, submet2, type="l", col="red")
lines(days, submet3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

dev.off()
data <- "C:/Users/Vincent/Desktop/Coursera//ProjetsR/household_power_consumption.txt"
data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
february <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
days <- strptime(paste(february$Date, february$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalactivepower <- as.numeric(february$Global_active_power)

png("plot2.png", width=480, height=480)

plot(days, globalactivepower, xlab="", ylab="Global Active Power (kilowatts)", type="l")

dev.off()
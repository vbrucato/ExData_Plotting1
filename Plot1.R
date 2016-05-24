data <- "C:/Users/Vincent/Desktop/Coursera//ProjetsR/household_power_consumption.txt"
data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
february <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalactivepower <- as.numeric(february$Global_active_power)

png("plot1.png", width=480, height=480)

hist(globalactivepower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
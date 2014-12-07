data <- read.csv("household_power_consumption.txt", sep= ";",stringsAsFactors=FALSE, dec=".")

data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
head(datetime)

subm1 <- as.numeric(data$Sub_metering_1)
subm2 <- as.numeric(data$Sub_metering_2)
subm3 <- as.numeric(data$Sub_metering_3)

png(filename = "Plot3.png", width = 480, height = 480)
plot(datetime, subm1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subm2, type="l", col = "red")
lines(datetime, subm3, type="l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()

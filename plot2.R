data <- read.csv("household_power_consumption.txt", sep= ";",stringsAsFactors=FALSE, dec=".")

data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#data$Time <- chron(times=data$Time)

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
head(datetime)

GAP <- as.numeric(data$Global_active_power)

png(filename = "Plot2.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white")

plot(datetime, GAP, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()


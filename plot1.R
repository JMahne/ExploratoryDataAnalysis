data <- read.csv("household_power_consumption.txt", sep= ";",stringsAsFactors=FALSE, dec=".")
data$Date <- as.Date(data$Date, "%d/%m/%Y")

data <- subset(data, (Date >= "2007-02-01" & Date <= "2007-02-02"))

png(filename = "Plot1.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white")

GAP <- as.numeric(data$Global_active_power)
hist(GAP, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")

dev.off()

data$Time <- as.Date(data$Date, "%d/%m/%Y")
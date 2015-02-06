data <-read.csv("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
date <- data[data$Date=="1/2/2007", ]
date1 <- data[data$Date=="2/2/2007", ]
res <- rbind(date,date1)
datetime <- strptime(paste(res$Date, res$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot <-as.numeric(res$Global_active_power)
Sub_metering_1 <-as.numeric(res$Sub_metering_1)
Sub_metering_2 <-as.numeric(res$Sub_metering_2)
Sub_metering_3 <- as.numeric(res$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datetime, Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, Sub_metering_2, type="l", col="red")
lines(datetime, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1,  col=c("black", "red", "blue"))
dev.off()


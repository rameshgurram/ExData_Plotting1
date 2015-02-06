data <-read.csv("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
date <- data[data$Date=="1/2/2007", ]
date1 <- data[data$Date=="2/2/2007", ]
res <- rbind(date,date1)
datetime <- strptime(paste(res$Date, res$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot <-as.numeric(res$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, plot, type="l", ylab="Global Active Power (kilowatts)")
dev.off()

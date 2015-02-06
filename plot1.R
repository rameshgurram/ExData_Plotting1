data <-read.csv("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
date <- data[data$Date=="1/2/2007", ]
date1 <- data[data$Date=="2/2/2007", ]
res <- rbind(date,date1)
plot <-as.numeric(res$Global_active_power)
png("plot1.png", width=480, height=480)
hist(plot,col="red",xlab = "Global Active Power(kilowatts)",main = "Global active power")
dev.off()

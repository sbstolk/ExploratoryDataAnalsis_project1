file <- "./household_power_consumption.txt"
> data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
> plotdata <-subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#assign values
> GlobeActivePower <- as.numeric(plotdata$Global_active_power)
> datetime <- strptime(paste(plotdata$Date, plotdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
> subMetering1 <- as.numeric(subSetData$Sub_metering_1)
> subMetering2 <- as.numeric(subSetData$Sub_metering_2)
> subMetering3 <- as.numeric(subSetData$Sub_metering_3)
#create plot
> png("plot4.png", width=480, height=480)
>par(mfrow = c(2, 2))
>plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
> lines(datetime, subMetering2, type="l", col="red")
> lines(datetime, subMetering3, type="l", col="blue")
> legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
>plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
>plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
>plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
>lines(datetime, subMetering2, type="l", col="red")
>lines(datetime, subMetering3, type="l", col="blue")
>legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
>plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")
> dev.off()

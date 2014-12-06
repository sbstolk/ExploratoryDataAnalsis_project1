#loaded data
> file <- "./household_power_consumption.txt"
> data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
> plotdata <-subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#used variable from previous plot
> plotone <- as.numeric(plotdata$Global_active_power)\
> datetime <- strptime(paste(plotdata$Date, plotdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#plot
> plot(datetime, plotone, type="l", xlab="", ylab="Global Active Power (kilowatts)")
#create png
> png("plot2.png", width=480, height=480)
> dev.off()

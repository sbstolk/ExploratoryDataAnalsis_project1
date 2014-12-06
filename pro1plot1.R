ExploratoryDataAnalsis_project1
===============================
#load data into R from text file
> file <- "./household_power_consumption.txt"
> data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
> plotdata <-subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
> plotone <- as.numeric(plotdata$Global_active_power)
#Create histogram
> hist(plotone, main="Global Active Power", xlab="Global Active Power (kilowatts)",col="red" )
#create .png
> png("plot1.png", width=480, height=480)
> dev.off()

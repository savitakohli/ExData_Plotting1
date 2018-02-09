plot4 <- function(file) {
    
    ## Read file
    
    rawdata <- read.table(file, sep = ";", header = TRUE)
    
    ## Create subset of data 
    
    use<-subset(rawdata, rawdata$Date == '1/2/2007' | rawdata$Date == '2/2/2007')
    
    ## Create new variable datetime
    use$datetime<-paste(use$Date, use$Time)
    ##converting datetime variable to Time using strptime function
    use$datetime<- strptime(use$datetime, format = '%d/%m/%Y %H:%M:%S')
    
    par(mfrow = c(2,2))
    ##hist(as.numeric(as.character(use$Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power (killowatts")
    plot(use$datetime, as.numeric(as.character(use$Global_active_power)), type = "l",xlab="",ylab="Global Active Power (kilowatts)") 
    plot(use$datetime, as.numeric(as.character(use$Voltage)), type = "l",xlab="",ylab="Voltage") 
    
    ## Plot  on screen
    plot(use$datetime, as.numeric(as.character(use$Sub_metering_1)), type = "l",xlab="",ylab="Energy sub metering") 
    lines(use$datetime, as.numeric(as.character(use$Sub_metering_2)), col="red", type = "l",xlab="",ylab="Energy sub metering") 
    lines(use$datetime, as.numeric(as.character(use$Sub_metering_3)), col="blue", type = "l",xlab="",ylab="Energy sub metering") 
    legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    
    plot(use$datetime, as.numeric(as.character(use$Global_reactive_power)), type = "l",xlab="",ylab="Global Reactive Power") 
    
    ## Copy histogram in png file
    dev.copy(png, filename = "plot14.png", width = 480, height = 480, units = "px")
    
    ## Closing png file
    dev.off()
    
    ## remove dataframes from memoryread
    ## rm(rawdata, use)
    
}
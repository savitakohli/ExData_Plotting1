plot2 <- function(file) {
    
    ## Read file
    
    rawdata <- read.table(file, sep = ";", header = TRUE)
    
    ## Create subset of data 
    
    use<-subset(rawdata, rawdata$Date == '1/2/2007' | rawdata$Date == '2/2/2007')
    
    ## Create new variable datetime
    use$datetime<-paste(use$Date, use$Time)
    ##converting datetime variable to Time using strptime function
    use$datetime<- strptime(use$datetime, format = '%d/%m/%Y %H:%M:%S')
    
    ## Plot histogram on screen
    plot(use$datetime, as.numeric(as.character(use$Global_active_power)), type = "l",xlab="",ylab="Global Active Power (kilowatts)") 
    
    ## Copy histogram in png file
    dev.copy(png, filename = "plot12.png", width = 480, height = 480, units = "px")
    
    ## Closing png file
    dev.off()
    
    ## remove dataframes from memoryread
    rm(rawdata, use)
    
}

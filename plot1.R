plot1 <- function(file) {
    
    ## Read file

    rawdata <- read.table(file, sep = ";", header = TRUE)
    
    ## Create subset of data 
    
    use<-subset(rawdata, rawdata$Date == '1/2/2007' | rawdata$Date == '2/2/2007')
    
    ## Plot histogram on screen
    hist(as.numeric(as.character(use$Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power (killowatts")
    
    ## Copy histogram in png file
    dev.copy(png, filename = "plot11.png", width = 480, height = 480, units = "px")
    
    ## Closing png file
    dev.off()
    
    ## remove dataframes from memoryread
    rm(rawdata, use)
    
}

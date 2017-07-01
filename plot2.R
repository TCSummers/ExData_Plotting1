##line graph of Global Active Power across days of the week
  ##from the  UC Irvine Machine Learning Repository
    ##Electric power consumption data for 2/1/2007 and 2/2/2007

##set up data
pwr$Time<-as.character(pwr$Time)
  pwr$DateTime<-strptime(paste(pwr$Date,pwr$Time),format="%Y-%m-%d %H:%M:%S")

##open png device and create file
  png("plot2.png") ##default is w480 h480, writes to work directory
  
##plot type "l"
plot(pwr$DateTime,pwr$Global_active_power, type="l", 
     ylab = "Global Active Power (kilowatts)",xlab="")

##close device
dev.off()
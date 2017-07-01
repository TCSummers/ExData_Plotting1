##line graph of Sub metering data across days of the week
  ##from the  UC Irvine Machine Learning Repository
  ##Electric power consumption data for 2/1/2007 and 2/2/2007

##set up data
pwr$Sub_metering_1<-as.numeric(as.character(pwr$Sub_metering_1))
  pwr$Sub_metering_2<-as.numeric(as.character(pwr$Sub_metering_2))
  pwr$Sub_metering_3<-as.numeric(as.character(pwr$Sub_metering_3))

##open png device and create file
png("plot3.png") ##default is w480 h480, writes to work directory
  
##create line plot with first variable
with(pwr, plot(DateTime, Sub_metering_1, xlab="", 
            ylab="Energy sub metering", type="l"))
##add second variable in red
with(pwr, points(DateTime, Sub_metering_2, col="red", type="l"))

##add third variable in blue
with(pwr, points(DateTime, Sub_metering_3, col="blue", type="l"))

##add legend in topright
legend("topright", col = c("black", "blue", "red"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1)

##close device
dev.off()
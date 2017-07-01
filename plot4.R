##2x2 group of charts where topleft is assignment plot2
##bottom left is assignment plot3
##top right is line chart of datetime by Voltage
##bottom right is line chart of datetime by Global_reactive_power
##from the  UC Irvine Machine Learning Repository
##Electric power consumption data for 2/1/2007 and 2/2/2007

##set up data in Voltage & Global_reactive_power, boo factors
  pwr$Voltage<-as.numeric(as.character(pwr$Voltage))
  pwr$Global_reactive_power<-as.numeric(as.character(pwr$Global_reactive_power))

##open png device
  png("plot4.png") ##default is w480 h480, writes to work directory

##set up plot window to 2x2 and fill by column
  par(mfcol=c(2,2))

##add plot2
  plot(pwr$DateTime,pwr$Global_active_power, type="l",
       ylab = "Global Active Power (kilowatts)",xlab="")
       
##add plot3
  with(pwr, plot(DateTime, Sub_metering_1, xlab="", 
                 ylab="Energy sub metering", type="l"))
  ##add second variable in red
  with(pwr, points(DateTime, Sub_metering_2, col="red", type="l"))
  ##add third variable in blue
  with(pwr, points(DateTime, Sub_metering_3, col="blue", type="l"))
  ##add legend in topright
  legend("topright", col = c("black", "blue", "red"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lty=1,bty="n")

##create new plot for top right
  with(pwr, plot(DateTime,Voltage,xlab="datetime",
                 ylab="Voltage",type="l"))
  
##create new plot for bottom right
  with(pwr, plot(DateTime,Global_reactive_power,type="l",
                 xlab="datetime",ylab="Global_reactive_power"))
  
##close device
  dev.off()
##bar chart of Global Active Power freq. using dataframe pwr
 ## from the  UC Irvine Machine Learning Repository
    ## Electric power consumption data for 2/1/2007 and 2/2/2007

##change Global_active_power to numeric from factor
pwr$Global_active_power<-as.numeric(as.character(pwr$Global_active_power))

##open png device and create file
png("plot1.png") ##default is w480 h480
  hist(pwr$Global_active_power,col="red",
       xlab="Global Active Power (kilowatts)",
       main="Global Active Power") ##write chart to png
  dev.off() ##always close device

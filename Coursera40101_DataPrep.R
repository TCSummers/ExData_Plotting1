##read data into R
fulldata<-read.delim("household_power_consumption.txt", header=TRUE, sep=";")
fulldata$Date<-as.Date(fulldata$Date,"%d/%m/%Y") ##Set Date column class

daydata<-subset(fulldata, Date=="2007-02-01") ##subset to day one
daydata2<-subset(fulldata, Date=="2007-02-02") ## subset to day two

pwr<-rbind(daydata,daydata2)## combine day one and two
rm(fulldata,daydata,daydata2) ##clean up workspace
##not needed is.na<-pwr$Time=="?" ##change na character to NA proper
##is.na<-pwr$Global_active_power=="?"
##is.na<-pwr$Global_reactive_power=="?"
##is.na<-pwr$Voltage=="?"
##is.na<-pwr$Global_intensity=="?"
##is.na<-pwr$Sub_metering_1=="?"
##is.na<-pwr$Sub_metering_2=="?"
##is.na<-pwr$Sub_metering_3=="?"
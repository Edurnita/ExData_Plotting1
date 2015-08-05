#STEP 6: PLOT 4
#FIRST I OPEN DEVICE, AFTER I MAKE THE PLOTS CONSECUTIVELY (TELLING THAT I WANT TWO PLOTS PER LINE AND PER COLUMN- par(mfrow=c(2,2))) 
#AND SET THE LEGEND. FINALLY, I CLOSE DEVICE.
png("plot4.png",width=480,height=480,units="px")
par(mfrow=c(2,2))
plot(muestra$Datetime, muestra$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
plot(muestra$Datetime, muestra$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(muestra$Datetime, muestra$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",col="black")
lines(muestra$Datetime, muestra$Sub_metering_2,col="red")
lines(muestra$Datetime, muestra$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty="solid", bty="n")
plot(muestra$Datetime, muestra$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
x<-dev.off()
#STEP 5: PLOT 3
#FIRST I OPEN DEVICE, AFTER I MAKE THE PLOTS CONSECUTIVELY AND SET THE LEGEND.
#FINALLY, I CLOSE DEVICE.
png("plot3.png",width=480,height=480,units="px")
plot(muestra$Datetime, muestra$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",col="black")
lines(muestra$Datetime, muestra$Sub_metering_2,col="red")
lines(muestra$Datetime, muestra$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty="solid")
x<-dev.off()
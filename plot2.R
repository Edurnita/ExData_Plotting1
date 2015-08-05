#STEP 4: PLOT 2
#FIRST I OPEN DEVICE, AFTER I MAKE THE PLOT AND THEN CLOSE DEVICE
png("plot2.png",width=480,height=480,units="px")
plot(muestra$Datetime, muestra$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
x<-dev.off()
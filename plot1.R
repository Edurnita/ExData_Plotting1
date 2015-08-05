#STEP 3: PLOT 1.
#FIRST I OPEN DEVICE, AFTER I MAKE THE PLOT AND THEN CLOSE DEVICE
png("plot1.png",width=480,height=480,units="px")
hist(muestra$Global_active_power, main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
x<-dev.off()
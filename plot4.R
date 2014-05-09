Powerdata=read.csv2("C:/Users/Jon/Downloads/household_power_consumption.txt")
Powerdata2=subset(Powerdata, Date=="1/2/2007" | Date=="2/2/2007")

Powerdata2$Global_active_power=as.numeric(as.character(Powerdata2$Global_active_power))
Powerdata2$Sub_metering_1=as.numeric(as.character(Powerdata2$Sub_metering_1))
Powerdata2$Sub_metering_2=as.numeric(as.character(Powerdata2$Sub_metering_2))
Powerdata2$Sub_metering_3=as.numeric(as.character(Powerdata2$Sub_metering_3))
Powerdata2$Voltage=as.numeric(as.character(Powerdata2$Voltage))
Powerdata2$Global_reactive_power=as.numeric(as.character(Powerdata2$Global_reactive_power))

par(mfrow = c(2, 2))

plot(Powerdata2$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)", xaxt="n")
lines(Powerdata2$Global_active_power)
axis(side=1,at=c(1, 1441, 2880),labels=c("Thu", "Fri", "Sat"))

plot(Powerdata2$Voltage, type="n", xlab="datetime", ylab="Voltage", xaxt="n")
axis(side=1,at=c(1, 1441, 2880),labels=c("Thu", "Fri", "Sat"))
lines(Powerdata2$Voltage, col="black")

plot(Powerdata2$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering", xaxt="n")
axis(side=1,at=c(1, 1441, 2880),labels=c("Thu", "Fri", "Sat"))
lines(Powerdata2$Sub_metering_1, col="black")
lines(Powerdata2$Sub_metering_2, col="red")
lines(Powerdata2$Sub_metering_3, col="blue")
legend(2100, 39.5, c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"), cex=0.3, bty="n")

plot(Powerdata2$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power", xaxt="n")
axis(side=1,at=c(1, 1441, 2880),labels=c("Thu", "Fri", "Sat"))
lines(Powerdata2$Global_reactive_power, col="black")
dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()

Powerdata=read.csv2("C:/Users/Jon/Downloads/household_power_consumption.txt")
Powerdata2=subset(Powerdata, Date=="1/2/2007" | Date=="2/2/2007")

Powerdata2$Sub_metering_1=as.numeric(as.character(Powerdata2$Sub_metering_1))
Powerdata2$Sub_metering_2=as.numeric(as.character(Powerdata2$Sub_metering_2))
Powerdata2$Sub_metering_3=as.numeric(as.character(Powerdata2$Sub_metering_3))

plot(Powerdata2$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering", xaxt="n")
axis(side=1,at=c(1, 1441, 2880),labels=c("Thu", "Fri", "Sat"))
lines(Powerdata2$Sub_metering_1, col="black")
lines(Powerdata2$Sub_metering_2, col="red")
lines(Powerdata2$Sub_metering_3, col="blue")
legend(2100, 39.5, c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"), cex=0.6, bty="n")

dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()


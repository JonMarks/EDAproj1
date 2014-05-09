Powerdata=read.csv2("C:/Users/Jon/Downloads/household_power_consumption.txt")
Powerdata2=subset(Powerdata, Date=="1/2/2007" | Date=="2/2/2007")

Powerdata2$Global_active_power=as.numeric(as.character(Powerdata2$Global_active_power))

par(mfrow = c(1, 1))

hist(Powerdata2$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

dev.copy(png, file = "plot1.png", width = 480, height = 480) 
dev.off()

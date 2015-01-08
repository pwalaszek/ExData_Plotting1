source("DownloadAndLoadData.R")
data = DownloadAndLoadData()

#matrix 2x2 of plots
par(mfcol=c(2,2))

#first plot [1,1]
plot(data$Date,data$Global_active_power, ylab="Global Active Power", xlab="", type="l")

#second plot [2,1]
plot(data$Date,data$Sub_metering_1, type="l",ylab="Energy sub metering",xlab="")
legend("topright", legend=names(data[7:9]), lty=1, col=c("black","red","blue"), text.width = strwidth("Sub_metering_1"))
lines(data$Date,data$Sub_metering_3, type="l", col="blue")
lines(data$Date,data$Sub_metering_2, type="l", col="red")

#third plot [1,2]
plot(data$Date,data$Voltage, ylab="Voltage", xlab="datetime", type="l")

#last plot [2,2]
plot(data$Date,data$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")

#copy graphic device to file
dev.copy(png,file="plot4.png")
dev.off()

#reset plot number to 1
par(mfcol=c(1,1))

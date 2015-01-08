source("DownloadAndLoadData.R")
data = DownloadAndLoadData()

plot(data$Date,data$Sub_metering_1, type="l",ylab="Energy sub metering",xlab="")
legend("topright", legend=names(data[7:9]), lty=1, col=c("black","red","blue"), text.width = strwidth("Sub_metering_1"))
lines(data$Date,data$Sub_metering_3, type="l", col="blue")
lines(data$Date,data$Sub_metering_2, type="l", col="red")

dev.copy(png,file="plot3.png")
dev.off()

source("DownloadAndLoadData.R")
data = DownloadAndLoadData()

plot(data$Date,data$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.copy(png,file="plot2.png")
dev.off()
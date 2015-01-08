source("DownloadAndLoadData.R")
data = DownloadAndLoadData()


#make plot1
hist(data$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()

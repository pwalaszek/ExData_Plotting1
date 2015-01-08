DownloadAndLoadData <- function()
{ 
  if(!file.exists("household_power_consumption.txt"))
  {
    download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                  dest = "exdata%2Fdata%2Fhousehold_power_consumption.zip")
    unzip("exdata%2Fdata%2Fhousehold_power_consumption.zip")
  }
  
  rawData = read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
  
  rawData = rawData[grep("^1/2/2007$|^2/2/2007$",rawData$Date),]
  rawData$Date = strptime(paste(rawData$Date,rawData$Time), "%d/%m/%Y %H:%M:%S")
  return(rawData)
}
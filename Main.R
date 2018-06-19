#Reading data "household_power_consumption"

data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")
dim(data)
#[1] 2075259       9
head(data)

# We will only be using data from the dates 2007-02-01 and 2007-02-02

SelectedData <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
dim(SelectedData)
#[1] 2880    9

head(SelectedData)
str(SelectedData)


#Converting date variable to date/time class variable
SelectedData$Date <- as.Date(SelectedData$Date, format="%d/%m/%Y")
str(SelectedData)


#Converting time variable to date/time class variable
SelectedData$Time <- strptime(paste(SelectedData$Date, SelectedData$Time), format="%Y-%m-%d %H:%M:%S")
str(SelectedData)

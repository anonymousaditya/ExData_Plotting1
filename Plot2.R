data <- read.table("C:/Users/aditya.gupta/Desktop/exdata-data-household_power_consumption/household_power_consumption.txt",
                   header = TRUE,sep = ";",na.strings = "?")
data<- subset(data, Date %in% c('1/2/2007','2/2/2007'))
data$x <- paste(data$Date,data$Time)
data$x <- strptime(data$x,"%d/%m/%Y %H:%M:%S")
png(file = "plot2.png", width = 480, height = 480, units = "px")
with(data,plot(x,Global_active_power, type = "l", xlab = "",ylab = "Global Active Power (kilowatts)"))
dev.off()

library(dplyr)
data <- read.delim("./household_power_consumption.txt",header = TRUE,sep=";")
data1 <- filter(data, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
data1$datetime <- as.POSIXct(paste(data1$Date, data1$Time))

png("plot2.png", width=480, height=480)
plot2 <- plot(data1$datetime,data1$Global_active_power,
              main = "Global Active Power",
              xlab="", 
              ylab = "Global Active Power (kilowatts)", 
              type = "l")

dev.off()
library(dplyr)
data <- read.delim("./household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors = TRUE)
data1 <- filter(data, Date %in% c("1/2/2007","2/2/2007"))

png("plot1.png", width=480, height=480)
plot1 <- hist(as.numeric(data1$Global_active_power),
              main = "Global Active Power", 
              xlab = "Global Active Power (kilowatts)",
              col = "red")
dev.off()
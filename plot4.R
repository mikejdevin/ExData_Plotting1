

t2 <- read.table("household_power_consumption.txt",header = TRUE, sep = ";",na.strings="?")

daystr <- as.character(t2[,1])

then <- grep("^[12]/2/2007",daystr)

data <- t2[then,]

daxta <- paste( as.character(data[,1]) , as.character(data[,2]) , sep=" ")

dp <- as.POSIXct(daxta, format="%d/%m/%Y %H:%M:%S")

png(filename = "plot4.png",width = 480, height = 480, units = "px")

par(mfrow=c(2,2))

plot(dp,data[,3],type="l",ylab = "Global Active Power (kilowatts)", xlab="")

plot(dp,data[,5],type="l",ylab = "Voltage", xlab="datetime")

plot(dp,data[,7],type="l",ylab = "Energy sub metering", xlab="")

lines(dp,data[,8],col="red")

lines(dp,data[,9],col="blue")

legend("topright", c("sub_metering_1","sub_metering_2","sub_metering_3"), col = c(1,2,4),lty=1)

plot(dp,data[,4],type="l",ylab = "Global_reactive_power", xlab="datetime")


dev.off()

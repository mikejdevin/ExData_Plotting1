

t2 <- read.table("household_power_consumption.txt",header = TRUE, sep = ";",na.strings="?")

daystr <- as.character(t2[,1])

then <- grep("^[12]/2/2007",daystr)

data <- t2[then,]

daxta <- paste( as.character(data[,1]) , as.character(data[,2]) , sep=" ")

dp <- as.POSIXct(daxta, format="%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png",width = 480, height = 480, units = "px")

plot(dp,data[,3],type="l",ylab = "Global Active Power (kilowatts)", xlab="")

dev.off()
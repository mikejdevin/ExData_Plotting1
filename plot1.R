


t2 <- read.table("household_power_consumption.txt",header = TRUE, sep = ";",na.strings="?")

daystr <- as.character(t2[,1])

then <- grep("^[12]/2/2007",daystr)

gap <- t2[then,3]

png(filename = "plot1.png",width = 480, height = 480, units = "px")

hist(gap,main="Global Active Power",xlab="Global Active Power (kilowatts)",col = "red", cex.lab = .75,yaxt ="n")
axis(side=2, at=seq(0,1200, 200), labels=seq(0,1200,200),cex.axis=.5)

dev.off()
data<-read.csv("power/household_power_consumption.txt", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
							header=FALSE,
							skip=66637,
							nrows=2880,
							sep=";")

png(file="plot2.png", bg="transparent", width=480, height=480)

par(mfrow=c(1,1))

plot(strptime(paste(data[,1],data[,2]), "%d/%m/%Y %H:%M:%S", tz="GMT"),
     data[,3],
     type="l",
     col="black",
     fg="black",
     xlab="",
     ylab="Global Active Power (kilowatts)")

dev.off()
data<-read.csv("power/household_power_consumption.txt", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
							header=FALSE,
							skip=66637,
							nrows=2880,
							sep=";")

png(file="plot3.png", bg="transparent", width=480, height=480)

par(mfrow=c(1,1))

plot(strptime(paste(data[,1],data[,2]), "%d/%m/%Y %H:%M:%S", tz="GMT"), ##X
     data[,7],								##Y
     type="l",
     col="black",
     fg="black",
     xlab="",
     ylab="Energy sub metering")

par(new=TRUE)

plot(strptime(paste(data[,1],data[,2]), "%d/%m/%Y %H:%M:%S", tz="GMT"),	##X
     data[,8],								##Y
     type="l",
     col="red",
     fg="black",
     xlab="",
     ylab="",
     ylim=range(data[,7]))						##keep scale

par(new=TRUE)

plot(strptime(paste(data[,1],data[,2]), "%d/%m/%Y %H:%M:%S", tz="GMT"),	##X
     data[,9],								##Y
     type="l",
     col="blue",
     fg="black",
     xlab="",ylab="",
     ylim=range(data[,7]))						##keep scale


dev.off()
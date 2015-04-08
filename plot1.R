data<-read.csv("power/household_power_consumption.txt", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
							header=FALSE,
							skip=66637,
							nrows=2880,
							sep=";")

png(file="plot1.png", bg="transparent", width=480, height=480)

par(mfrow=c(1,1))

hist(data[,3],col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
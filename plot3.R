#Importing data 
my_data1<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
head(my_data1)
str(my_data1)
my_data1 <- my_data1[(dateTime >= "2007-02-01") & (dateTime < "2007-02-03")]
#plot3
with(my_data1, {
  plot(Sub_metering_1~dateTime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~dateTime,col='Red')
  lines(Sub_metering_3~dateTime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
png("plot3.png", width=480, height=480)
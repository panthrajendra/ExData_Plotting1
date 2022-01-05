#Importing data 
my_data1<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
head(my_data1)
str(my_data1)
my_data1 <- my_data1[(dateTime >= "2007-02-01") & (dateTime < "2007-02-03")]
#plot1
hist(my_data1$Global_active_power,3, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red"  )
png("plot1.png", width=480, height=480)
setwd("/Users/Tammy/online_courses/data_science")
power_consumption<- read.table("household_power_consumption.txt", sep=";", 
                               header=T, stringsAsFactors=F, na.strings="?")

# only a subset of the data will be used
power_consumption_sub<- subset(power_consumption,Date=="1/2/2007"| Date=="2/2/2007")
datetime<- paste(power_consumption_sub$Date, power_consumption_sub$Time, sep=" ")

# add a new column combining the date and time 
power_consumption_sub$datetime<- strptime(datetime, "%d/%m/%Y %H:%M:%S")

# change the characters to numeric numbers
for (i in 3:9){
        power_consumption_sub[,i]<- as.numeric(power_consumption_sub[,i])
}

# plot the histogram 
png("plot1.png", width=480, height=480, units="px")
with(power_consumption_sub, hist(Global_active_power, col="red", 
                                 xlab="Global Active Power (kilowatts)", 
                                 main="Global Active Power"))
dev.off()


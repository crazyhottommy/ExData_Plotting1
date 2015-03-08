png("plot4.png", width=480, height=480, units="px")
par(mfrow=c(2,2), mar=c(4,4,4,4))

#plot the figure in the top left
with(power_consumption_sub, plot(x=datetime, y=Global_active_power, type='n',
                                 ylab="Global Active Power (kilowatts)",
                                 xlab=""))

# add the lines on top of the place-holder
with(power_consumption_sub, lines(x=datetime, y=Global_active_power))

# plot the figure in the top right
with(power_consumption_sub, plot(x=datetime, y=Voltage, type='n'))
with(power_consumption_sub, lines(x=datetime, y=Voltage))

# plot the figure in the botom left
with(power_consumption_sub, plot(x=datetime, y=Sub_metering_1, type='n', ylab="Energy sub metering",
                                 xlab=""))
with(power_consumption_sub, {
        lines(x=datetime, y=Sub_metering_1, col="black")
        lines(x=datetime, y=Sub_metering_2, col="red")
        lines(x=datetime, y=Sub_metering_3, col="blue")
})
legend("topright", col = c("black","red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty="n",lty=c(1,1,1), cex= 1)

# plot the figure in the botom right
with(power_consumption_sub, plot(x=datetime, y=Global_reactive_power, type='n'))
with(power_consumption_sub, lines(x=datetime, y=Global_reactive_power))
dev.off()

png("plot3.png", width=480, height=480, units="px")
with(power_consumption_sub, plot(x=datetime, y=Sub_metering_1, type='n', ylab="Energy sub metering",
                                 xlab=""))
with(power_consumption_sub, {
        lines(x=datetime, y=Sub_metering_1, col="black")
        lines(x=datetime, y=Sub_metering_2, col="red")
        lines(x=datetime, y=Sub_metering_3, col="blue")
})
legend("topright", col = c("black","red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1))
dev.off()